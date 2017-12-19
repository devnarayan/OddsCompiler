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
        public string CrawlIT(string link)
        {
            try
            {
                CrawlFirstPageData crawldata = new CrawlFirstPageData();
                ThreadParameters tp = new ThreadParameters
                {
                    URL = link
                };
                ThreadPool.QueueUserWorkItem(new WaitCallback(CrawlAllLinks), tp);
                return "Command completed successfully";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public void CrawlAllLinks(object threadparam)
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
                var list = doc.DocumentNode.SelectSingleNode("//ul[@id='sport-nav']//ul");

                var nodes = list.SelectNodes("./a");
                if (nodes != null)
                {
                    for (int i = 0; i < nodes.Count; i++)
                    {
                        string link = "http://www.oddschecker.com" + nodes[0].Attributes["href"].Value;
                        linkList.Add(new UrlModel()
                        {
                            PageUrl = nodes[0].Attributes["href"].Value,
                            FullUrl = "http://www.oddschecker.com" + nodes[0].Attributes["href"].Value
                        });
                    }
                    xmldoc = GenerateXmlForPageUrls(linkList);
                    crawldata.InsertLinks(xmldoc);

                    TraceService("Data Inserted : --------Lague--------SportID: Footbal , URL:" + url + "\n");
                }
            }
            catch (Exception ex)
            {
                TraceService("Error  : --------Lague--------SportID: Footbal , URL:" + url + "\n");
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
                FileStream fs = new FileStream(@"c:\OddsService\ScheduledService.txt", FileMode.OpenOrCreate, FileAccess.Write);

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
