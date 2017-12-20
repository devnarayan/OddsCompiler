CREATE TABLE [dbo].[sf_mb_dynmc_mdl_fld_sf_prmssns] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_mb_dynmc_mdl_fl_E46A35E8] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_f_AE25D842] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_f_E365C93C] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_mb_dynamic_module_field] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mb_dynmc_mdl_fld_sf_prm]
    ON [dbo].[sf_mb_dynmc_mdl_fld_sf_prmssns]([id2] ASC);

