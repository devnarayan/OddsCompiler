CREATE TABLE [dbo].[sf_ec_product_sf_language_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_c_prdct_sf_lngg_9CD5E120] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_sf_lng_B24AC17B] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]),
    CONSTRAINT [ref_sf_c_prdct_sf_lng_EBDBA364] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_sf_lngg_dta_id2]
    ON [dbo].[sf_ec_product_sf_language_data]([id2] ASC);

