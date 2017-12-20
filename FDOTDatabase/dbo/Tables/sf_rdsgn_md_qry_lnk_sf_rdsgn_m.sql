CREATE TABLE [dbo].[sf_rdsgn_md_qry_lnk_sf_rdsgn_m] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_md_qry_ln_BE77E2B3] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_rdsgn_md_qry_l_B376AFEF] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_rdsgn_media_query_link] ([id]),
    CONSTRAINT [ref_sf_rdsgn_md_qry_l_E287174C] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_rdsgn_media_query] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_rdsgn_md_qry_lnk_sf_rds]
    ON [dbo].[sf_rdsgn_md_qry_lnk_sf_rdsgn_m]([id2] ASC);

