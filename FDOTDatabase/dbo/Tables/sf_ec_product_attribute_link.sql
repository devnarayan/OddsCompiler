CREATE TABLE [dbo].[sf_ec_product_attribute_link] (
    [product_type_id]      UNIQUEIDENTIFIER NULL,
    [product_attribute_id] UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [app_name]             VARCHAR (255)    NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_l_B2DD9B31] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_ec_prdct_attr_lnk]
    ON [dbo].[sf_ec_product_attribute_link]([app_name] ASC, [product_type_id] ASC, [product_attribute_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_lnk_prdct]
    ON [dbo].[sf_ec_product_attribute_link]([product_attribute_id] ASC);

