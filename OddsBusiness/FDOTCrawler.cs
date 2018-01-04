using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using HtmlAgilityPack;
using System.Data;
using OddsProperties;
using System.Web;
using System.Xml;
using OddsData;
using System.Threading;

namespace OddsBusiness
{
    public class FDOTCrawler
    {
        const string skipExtension = ".pdf,.doc,.exe,.dotx,.xlsx,.xml,.docx,.xls";

        public string CrawlUrls(string link)
        {
            try
            {
                CrawlFirstPageData crawldata = new CrawlFirstPageData();
                UrlModel tp = new UrlModel
                {
                    FullUrl = link,
                    FullUrl2 = link
                };
                CrawlAllLinks(tp);
                //ThreadPool.QueueUserWorkItem(new WaitCallback(CrawlAllLinks), tp);
                return "Command completed successfully";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public void CrawlData()
        {
            FDOTService _service = new FDOTService();
            while (_service.IsLinkCrawlRemain() > 0)
            {
                var linkList = _service.GetUrlForLinkCrawl();
                if (linkList != null)
                {
                    foreach (var link in linkList)
                    {
                        ThreadParameters tp = new ThreadParameters
                        {
                            URL = link.FullUrl
                        };
                        string ext = Path.GetExtension(link.FullUrl);
                        if (ext == null) ext = "";
                        if (skipExtension.Contains(ext) && ext != "")
                        {
                            // Skip this file format.
                            Console.WriteLine("--------Skipped Extension " + ext);
                        }
                        else
                        {
                            CrawlAllLinks(link);
                        }

                        // Update ulr status as IsLinkCrawled=True;
                        _service.UpdateLinkCrawled(link);

                        if (skipExtension.Contains(ext) && ext != "")
                        {
                            // Skip this file format.
                            Console.WriteLine("--------Skipped Extension " + ext);
                        }
                        else
                        {
                            CrawlContents(link);
                        }

                        // Update url status as IsDataCrawled= True;
                        _service.UpdateHtmlContentCrawled(link);
                    }
                }
            }
        }

        private void CrawlAllLinks(UrlModel model)
        {
            string url = model.FullUrl;
            try
            {
                Console.WriteLine("Link Crawling " + model.FullUrl);
                TraceService("Crawling Started: --------Links--------, URL:" + url + "\n");

                string html = Helper.GetWebSiteContent(model.FullUrl);
                if (html == "callback")
                {
                    Console.WriteLine("Link Crawling " + model.FullUrl2);
                    TraceService("Crawling Started: --------Links--------, URL:" + model.FullUrl2 + "\n");
                    url = model.FullUrl2;
                    html = Helper.GetWebSiteContent(model.FullUrl2);
                }
                HtmlAgilityPack.HtmlDocument doc = Helper.LoadHtml(html);
                FDOTService crawldata = new FDOTService();
                XmlDocument xmldoc = new XmlDocument();
                List<UrlModel> linkList = new List<UrlModel>();
                List<CrawlDirectoryModel> directoryList = new List<CrawlDirectoryModel>();
                var list = doc.DocumentNode.SelectSingleNode("//body");

                Uri myUri = new Uri(url);
                string host = myUri.Host;

                var nodes = list.SelectNodes(".//a");
                if (nodes != null)
                {
                    Console.WriteLine("Total links: " + nodes.Count);
                    for (int i = 0; i < nodes.Count; i++)
                    {
                        string link = nodes[i].Attributes["href"].Value;
                        string fullLink = "";
                        string fullLink2 = "";
                        //string ext = Path.GetExtension(link);
                        //if (ext == null) ext = "";
                        //if (skipExtension.Contains(ext) && ext != "")
                        //{
                        //    string pageName = Path.GetFileName(url);
                        //}

                        if (link.Contains("http://") || link.Contains("https://"))
                        {
                            fullLink = link;
                        }
                        else
                        {
                            fullLink = (url.Replace(Path.GetFileName(url), "") + "/" + link).Replace("///","/../");
                            fullLink2 = url + "/" + link;
                        }
                        bool isInDomain = fullLink.Contains(host) && !link.Contains("mailto:");
                        if (isInDomain)
                        {
                            // Only in domain directory added.
                            if (directoryList.Where(st => st.Name == "").Count() == 0)
                            {
                                directoryList.Add(new CrawlDirectoryModel()
                                {
                                    Name = ""

                                });
                            }
                        }
                        linkList.Add(new UrlModel()
                        {
                            PageUrl = link,
                            FullUrl = fullLink,
                            FullUrl2 = fullLink2,
                            IsInDomain =isInDomain
                        });
                    }
                    xmldoc = GenerateXmlForPageUrls(linkList);
                    crawldata.InsertLinks(linkList);

                    TraceService("Data Inserted : -------- herf-------- , URL:" + url + "\n");
                }
            }
            catch (Exception ex)
            {
                TraceService("Error  : --------herf-------- URL:" + url + "\n");
            }
        }

        private void CrawlContents(UrlModel model)
        {
            try
            {
                if (model.FullUrl.Contains("../"))
                {
                    string file2 = Path.GetFileName(model.FullUrl);
                    model.FullUrl = model.FullUrl.Replace(file2, "");
                    Console.WriteLine("----Removed file name " + file2);
                }

                Console.WriteLine("Content Crawling " + model.FullUrl);
                TraceService("Crawling Started: --------Links--------, URL:" + model.FullUrl + "\n");

                string html = Helper.GetWebSiteContent(model.FullUrl);
                if(html=="callback")
                {
                    Console.WriteLine("Content Crawling " + model.FullUrl2);
                    TraceService("Crawling Started: --------Links--------, URL:" + model.FullUrl2 + "\n");
                    html = Helper.GetWebSiteContent(model.FullUrl2);
                }

                HtmlAgilityPack.HtmlDocument doc = Helper.LoadHtml(html);
                FDOTService crawldata = new FDOTService();
                var content = doc.DocumentNode.SelectSingleNode("//div[@id='content']");
                var header = doc.DocumentNode.SelectSingleNode("//div[@id='header']");
                var footer = doc.DocumentNode.SelectSingleNode("//div[@id='footer']");

                if (content != null)
                {
                    var data = new UrlModel()
                    {
                        Id = model.Id,
                        HtmlContent = content.OuterHtml,
                        Header = header.OuterHtml,
                        Footer = footer.OuterHtml,
                        IsHtmlPage = true
                    };

                    crawldata.UpdateHtmlData(data);

                    TraceService("Data Inserted : -------- html data-------- , URL:" + model.FullUrl + "\n");
                }
            }
            catch (Exception ex)
            {
                TraceService("Error  : --------html data-------- URL:" + model.FullUrl + "\n");
            }
        }

        private XmlDocument GenerateXmlForPageUrls(List<UrlModel> leaguelist)
        {
            XmlDocument doc = new XmlDocument();
            using (XmlWriter writer = doc.CreateNavigator().AppendChild())
            {
                writer.WriteStartDocument();
                writer.WriteStartElement("Urls");

                foreach (UrlModel league in leaguelist)
                {
                    writer.WriteStartElement("Url");

                    writer.WriteElementString("PageUrl", league.PageUrl);
                    writer.WriteElementString("FullUrl", league.FullUrl);

                    writer.WriteEndElement();
                }

                writer.WriteEndElement();
                writer.WriteEndDocument();
                writer.Flush();
            }
            return doc;
        }

        private void TraceService(string content)
        {
            try
            {
                //set up a filestream
                FileStream fs = new FileStream(@"c:\FDOTService\ScheduledService.txt", FileMode.OpenOrCreate, FileAccess.Write);

                //set up a streamwriter for adding text
                StreamWriter sw = new StreamWriter(fs);

                //find the end of the underlying filestream
                sw.BaseStream.Seek(0, SeekOrigin.End);

                //add the text
                sw.WriteLine(content + " DateTime: " + DateTime.Now.ToString());
                //add the text to the underlying filestream

                sw.Flush();
                //close the writer
                sw.Close();
                fs.Dispose();
            }
            catch (Exception ex)
            {

            }
        }
    }
}
