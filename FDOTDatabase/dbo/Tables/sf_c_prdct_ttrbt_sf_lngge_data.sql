CREATE TABLE [dbo].[sf_c_prdct_ttrbt_sf_lngge_data] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_s_21742277] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__3AF3429A] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__9F4494B4] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product_attribute] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_sf_lngg_d]
    ON [dbo].[sf_c_prdct_ttrbt_sf_lngge_data]([id2] ASC);

