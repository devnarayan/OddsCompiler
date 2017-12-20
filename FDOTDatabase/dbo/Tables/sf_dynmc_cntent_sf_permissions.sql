CREATE TABLE [dbo].[sf_dynmc_cntent_sf_permissions] (
    [base_id] UNIQUEIDENTIFIER NOT NULL,
    [id]      UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_dynmc_cntnt_sf__A0DCFB00] PRIMARY KEY CLUSTERED ([base_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_35AE9BBA] FOREIGN KEY ([base_id]) REFERENCES [dbo].[sf_dynamic_content] ([base_id]),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_50D77764] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dynmc_cntnt_sf_prmssns_]
    ON [dbo].[sf_dynmc_cntent_sf_permissions]([id] ASC);

