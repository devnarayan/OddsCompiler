CREATE TABLE [dbo].[sf_page_data_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pg_dt_sf_lngg_d_E6BFA2AD] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pg_dt_sf_lngg__5936D8BD] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_pg_dt_sf_lngg__78605E03] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_page_data] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_dt_sf_lngage_data_id]
    ON [dbo].[sf_page_data_sf_language_data]([id] ASC);

