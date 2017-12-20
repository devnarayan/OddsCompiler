CREATE TABLE [dbo].[sf_link_click_stat] (
    [sf_link_click_stat_id] INT              NOT NULL,
    [url]                   NVARCHAR (4000)  NULL,
    [subscriber_id]         UNIQUEIDENTIFIER NULL,
    [date_time_clicked]     DATETIME         NOT NULL,
    [campaign_id]           UNIQUEIDENTIFIER NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_link_click_stat] PRIMARY KEY CLUSTERED ([sf_link_click_stat_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_click_stat_camp_subscr]
    ON [dbo].[sf_link_click_stat]([campaign_id] ASC, [subscriber_id] ASC);

