CREATE TABLE [dbo].[sf_delivery_entry] (
    [sf_delivery_entry_id] INT              NOT NULL,
    [subscriber_id]        UNIQUEIDENTIFIER NULL,
    [delivery_status]      INT              NOT NULL,
    [delivery_date]        DATETIME         NOT NULL,
    [campaign_id]          UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_delivery_entry] PRIMARY KEY CLUSTERED ([sf_delivery_entry_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_delivery_entry_camp_subscr]
    ON [dbo].[sf_delivery_entry]([campaign_id] ASC, [subscriber_id] ASC);

