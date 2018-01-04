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
            string dir= Path.GetDirectoryName("http://www.fdot.gov/agencyresources/emergency.shtm");
            string dir2= Path.GetDirectoryName("http://www.fdot.gov/");
            string dir3= Path.GetDirectoryName("http://www.fdot.gov//aboutUs.shtm");
            string dir4 = Path.GetDirectoryName("http://www.fdot.gov/mobile/m.default.shtm/m.default.shtm");
            string dir5 = Path.GetDirectoryName("http://www.fdot.gov/designsupport/ADA/default.shtm");
            FDOTCrawler crawler = new FDOTCrawler();
            crawler.CrawlUrls("http://www.fdot.gov/it");
            Console.WriteLine("Page Link crawled done.");

            crawler.CrawlData();
            Console.WriteLine("Data crawl done");

            Console.WriteLine("Press enter to close");
            while (Console.ReadKey().Key != ConsoleKey.Enter) { }
        }
    }

    public class AutomapperProfile
    {
        public AutomapperProfile()
        {
        }
    }
}
