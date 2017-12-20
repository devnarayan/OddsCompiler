CREATE TABLE [dbo].[CrawledData] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [PageUrl]       NVARCHAR (450) NULL,
    [FullUrl]       NVARCHAR (MAX) NULL,
    [CrawlDate]     DATETIME       CONSTRAINT [DF_CrawledData_CrawlDate] DEFAULT (getdate()) NULL,
    [IsLinkCrawled] BIT            NULL,
    [IsDataCrawled] BIT            NULL,
    [IsInDomain]    BIT            NULL,
    [Header]        TEXT           NULL,
    [Footer]        TEXT           NULL,
    [HtmlContent]   TEXT           NULL,
    CONSTRAINT [PK_CrawledData] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UI_CrawledData_PageUrl]
    ON [dbo].[CrawledData]([PageUrl] ASC);

