CREATE TABLE [dbo].[sf_pg_tmpltes_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pg_tmplts_sf_ln_B0860E72] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pg_tmplts_sf_l_070C78C7] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id]),
    CONSTRAINT [ref_sf_pg_tmplts_sf_l_E6D3AFDD] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_sf_lngg_dt_d2]
    ON [dbo].[sf_pg_tmpltes_sf_language_data]([id2] ASC);

