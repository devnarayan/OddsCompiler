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
        public string FullUrl2 { get; set; }
        public Nullable<System.DateTime> CrawlDate { get; set; }
        public Nullable<bool> IsLinkCrawled { get; set; }
        public Nullable<bool> IsDataCrawled { get; set; }
        public Nullable<bool> IsInDomain { get; set; }
        public string Header { get; set; }
        public string Footer { get; set; }
        public string HtmlContent { get; set; }
        public Nullable<bool> IsHtmlPage { get; set; }
        public Nullable<bool> IsHtmlPushed { get; set; }
        public Nullable<System.DateTime> PushDate { get; set; }
        public string DirectoryName { get; set; }
        public string NewUrl { get; set; }
    }

    public class CrawlTemplateModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string LayoutControlId { get; set; }
        public string LayoutControlCaption { get; set; }
        public string PlaceholderId { get; set; }
        public string PlaceholderCaption { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }

    public class CrawlDirectoryModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public System.DateTime AddedOn { get; set; }
        public bool IsPushed { get; set; }
        public Nullable<System.DateTime> PushedOn { get; set; }
        public int TotalPages { get; set; }
    }
}
