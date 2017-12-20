CREATE TABLE [dbo].[sf_mb_dynmc_mdl_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_mb_dynmc_mdl_sf_9CDD90B2] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_s_7521815B] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_mb_dynmc_mdl_s_B717FC1D] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_mb_dynamic_module] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mb_dynmc_mdl_sf_prmssns]
    ON [dbo].[sf_mb_dynmc_mdl_sf_permissions]([id2] ASC);

