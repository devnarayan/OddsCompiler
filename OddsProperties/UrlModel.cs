using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OddsProperties
{
   public class UrlModel
    {
        public int Id { get; set; }
        public string PageUrl { get; set; }
        public string FullUrl { get; set; }
        public Nullable<System.DateTime> CrawlDate { get; set; }
        public Nullable<bool> IsLinkCrawled { get; set; }
        public Nullable<bool> IsDataCrawled { get; set; }
        public Nullable<bool> IsInDomain { get; set; }
        public string Header { get; set; }
        public string Footer { get; set; }
        public string HtmlContent { get; set; }
    }
}
