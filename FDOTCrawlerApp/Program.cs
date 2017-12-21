using OddsBusiness;
using OddsData;
using OddsProperties;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDOTCrawlerApp
{
    class Program
    {
        static void Main(string[] args)
        {
            FDOTCrawler crawler = new FDOTCrawler();
            crawler.CrawlUrls("http://www.fdot.gov/it");
            Console.WriteLine("Page Link crawled done.");


            crawler.CrawlData();
            Console.WriteLine("Data crawl done");
        }
    }

    public class AutomapperProfile
    {
        public AutomapperProfile()
        {
        }
    }
}
