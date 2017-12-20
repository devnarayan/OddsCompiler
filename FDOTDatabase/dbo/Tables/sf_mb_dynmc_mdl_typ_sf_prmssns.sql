CREATE TABLE [dbo].[sf_mb_dynmc_mdl_typ_sf_prmssns] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_mb_dynmc_mdl_ty_C5800E63] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_t_A2809F53] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_mb_dynamic_module_type] ([id]),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_t_CDEAFFA6] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mb_dynmc_mdl_typ_sf_prm]
    ON [dbo].[sf_mb_dynmc_mdl_typ_sf_prmssns]([id2] ASC);

