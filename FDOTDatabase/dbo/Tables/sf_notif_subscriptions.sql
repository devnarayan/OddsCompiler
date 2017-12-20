CREATE TABLE [dbo].[sf_notif_subscriptions] (
    [subscriber_id] UNIQUEIDENTIFIER NULL,
    [list_id]       UNIQUEIDENTIFIER NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_notif_subscriptions] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ns_sn_subscriber]
    ON [dbo].[sf_notif_subscriptions]([subscriber_id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_ns_sn_list_subscriber]
    ON [dbo].[sf_notif_subscriptions]([list_id] ASC, [subscriber_id] ASC);

