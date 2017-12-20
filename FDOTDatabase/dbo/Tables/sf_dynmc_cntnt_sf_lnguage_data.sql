CREATE TABLE [dbo].[sf_dynmc_cntnt_sf_lnguage_data] (
    [base_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]     INT              NOT NULL,
    [id]      UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_dynmc_cntnt_sf__08B2392E] PRIMARY KEY CLUSTERED ([base_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_681AF741] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_dynmc_cntnt_sf_9C75A004] FOREIGN KEY ([base_id]) REFERENCES [dbo].[sf_dynamic_content] ([base_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dynmc_cntnt_sf_lngg_dt_]
    ON [dbo].[sf_dynmc_cntnt_sf_lnguage_data]([id] ASC);

