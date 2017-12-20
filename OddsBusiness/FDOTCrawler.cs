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
        public string CrawlUrls(string link)
        {
            try
            {
                CrawlFirstPageData crawldata = new CrawlFirstPageData();
                ThreadParameters tp = new ThreadParameters
                {
                    URL = link
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
                        CrawlAllLinks(tp);

                        // Update ulr status as IsLinkCrawled=True;
                        _service.UpdateLinkCrawled(link);

                        CrawlContents(tp);

                        // Update url status as IsDataCrawled= True;
                        _service.UpdateHtmlContentCrawled(link);
                    }
                }
            }
        }

        private void CrawlAllLinks(object threadparam)
        {
            ThreadParameters p = threadparam as ThreadParameters;
            string url = p.URL;
            try
            {
                TraceService("Crawling Started: --------Links--------, URL:" + url + "\n");

                string html = Helper.GetWebSiteContent(url);
                HtmlAgilityPack.HtmlDocument doc = Helper.LoadHtml(html);
                FDOTService crawldata = new FDOTService();
                XmlDocument xmldoc = new XmlDocument();
                List<UrlModel> linkList = new List<UrlModel>();
                var list = doc.DocumentNode.SelectSingleNode("//body");

                var nodes = list.SelectNodes(".//a");
                if (nodes != null)
                {
                    for (int i = 0; i < nodes.Count; i++)
                    {
                        string link = nodes[i].Attributes["href"].Value;
                        string fullLink = "";
                        if (link.Contains("http://") || link.Contains("https://"))
                        {
                            fullLink = link;
                        }
                        else
                        {
                            fullLink = url + "/" + link;
                        }
                        linkList.Add(new UrlModel()
                        {
                            PageUrl = link,
                            FullUrl = fullLink,
                            IsInDomain = fullLink.Contains(url)
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

        private void CrawlContents(object threadparam)
        {
            ThreadParameters p = threadparam as ThreadParameters;
            string url = p.URL;
            try
            {
                TraceService("Crawling Started: --------Links--------, URL:" + url + "\n");

                string html = Helper.GetWebSiteContent(url);
                HtmlAgilityPack.HtmlDocument doc = Helper.LoadHtml(html);
                FDOTService crawldata = new FDOTService();
                var content = doc.DocumentNode.SelectSingleNode("//div[@id='content']");
                var header = doc.DocumentNode.SelectSingleNode("//div[@id='header']");
                var footer = doc.DocumentNode.SelectSingleNode("//div[@id='footer']");

                if (content != null)
                {
                    var data = new UrlModel()
                    {
                        HtmlContent = content.OuterHtml,
                        Header = header.OuterHtml,
                        Footer = footer.OuterHtml
                    };

                    crawldata.UpdateHtmlData(data);

                    TraceService("Data Inserted : -------- html data-------- , URL:" + url + "\n");
                }
            }
            catch (Exception ex)
            {
                TraceService("Error  : --------html data-------- URL:" + url + "\n");
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
