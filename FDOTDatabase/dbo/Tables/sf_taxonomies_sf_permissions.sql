CREATE TABLE [dbo].[sf_taxonomies_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_txnms_sf_prmssn_D112A1A7] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_txnms_sf_prmss_8038D0E6] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxonomies] ([id]),
    CONSTRAINT [ref_sf_txnms_sf_prmss_A046D2CA] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_txnms_sf_prmissions_id2]
    ON [dbo].[sf_taxonomies_sf_permissions]([id2] ASC);

