CREATE TABLE [dbo].[sf_frm_dscrpton_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf__224E7794] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_8105C4C5] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_C0EF0D12] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_prmssns_]
    ON [dbo].[sf_frm_dscrpton_sf_permissions]([id] ASC);

