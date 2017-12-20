CREATE TABLE [dbo].[sf_md_content_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_md_cntnt_sf_lng_B0245982] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_md_cntnt_sf_ln_63674A2C] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id]),
    CONSTRAINT [ref_sf_md_cntnt_sf_ln_638FE5E3] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntnt_sf_lngg_dta_id]
    ON [dbo].[sf_md_content_sf_language_data]([id] ASC);

