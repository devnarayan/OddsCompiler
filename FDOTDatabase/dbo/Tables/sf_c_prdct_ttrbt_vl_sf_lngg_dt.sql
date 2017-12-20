CREATE TABLE [dbo].[sf_c_prdct_ttrbt_vl_sf_lngg_dt] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_v_0FF78F00] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__57590439] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product_attribute_value] ([id]),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__655893E8] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_vl_sf_lng]
    ON [dbo].[sf_c_prdct_ttrbt_vl_sf_lngg_dt]([id2] ASC);

