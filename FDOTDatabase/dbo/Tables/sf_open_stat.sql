CREATE TABLE [dbo].[sf_open_stat] (
    [sf_open_stat_id] INT              NOT NULL,
    [subscriber_id]   UNIQUEIDENTIFIER NOT NULL,
    [opened_date]     DATETIME         NOT NULL,
    [campaign_id]     UNIQUEIDENTIFIER NOT NULL,
    [voa_version]     SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_open_stat] PRIMARY KEY CLUSTERED ([sf_open_stat_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_open_stat_camp_subscr]
    ON [dbo].[sf_open_stat]([campaign_id] ASC, [subscriber_id] ASC);

