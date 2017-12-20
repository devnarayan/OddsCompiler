CREATE TABLE [dbo].[sf_news_items_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_nws_tms_sf_prms_96463089] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_nws_tms_sf_prm_30F6C541] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_nws_tms_sf_prm_37B82403] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_sf_prmssions_id]
    ON [dbo].[sf_news_items_sf_permissions]([id] ASC);

