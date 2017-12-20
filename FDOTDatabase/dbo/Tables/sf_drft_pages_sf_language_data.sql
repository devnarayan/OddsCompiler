CREATE TABLE [dbo].[sf_drft_pages_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_drft_pgs_sf_lng_806EFED9] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_drft_pgs_sf_ln_2C0B2153] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_drft_pgs_sf_ln_B7881151] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_draft_pages] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_drft_pgs_sf_lngg_dt_id2]
    ON [dbo].[sf_drft_pages_sf_language_data]([id2] ASC);

