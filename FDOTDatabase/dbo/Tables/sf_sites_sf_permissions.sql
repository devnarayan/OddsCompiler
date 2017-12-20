CREATE TABLE [dbo].[sf_sites_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_sites_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_sts_sf_prmssns_2BA50E5F] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_sites] ([id]),
    CONSTRAINT [ref_sf_sts_sf_prmssns_591B75AD] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_stes_sf_permissions_id2]
    ON [dbo].[sf_sites_sf_permissions]([id2] ASC);

