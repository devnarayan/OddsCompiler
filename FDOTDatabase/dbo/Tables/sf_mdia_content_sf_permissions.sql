CREATE TABLE [dbo].[sf_mdia_content_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_md_cntnt_sf_prm_BB882621] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_md_cntnt_sf_pr_39D160B5] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id]),
    CONSTRAINT [ref_sf_md_cntnt_sf_pr_C6D2D223] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntnt_sf_prmssons_id]
    ON [dbo].[sf_mdia_content_sf_permissions]([id] ASC);

