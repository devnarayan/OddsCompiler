CREATE TABLE [dbo].[sf_news_items_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_nws_tms_sf_lngg_23D548D9] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_nws_tms_sf_lng_BCDDA5D5] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_nws_tms_sf_lng_C5D9C25A] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_sf_lngg_data_id]
    ON [dbo].[sf_news_items_sf_language_data]([id] ASC);

