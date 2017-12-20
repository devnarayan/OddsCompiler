CREATE TABLE [dbo].[sf_ec_product_variation_detail] (
    [product_variation_id]           UNIQUEIDENTIFIER NULL,
    [prdct_vration_detail_parent_id] UNIQUEIDENTIFIER NOT NULL,
    [product_attribute_value_id]     UNIQUEIDENTIFIER NULL,
    [product_attribute_id]           UNIQUEIDENTIFIER NULL,
    [product_id]                     UNIQUEIDENTIFIER NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [created_date]                   DATETIME         NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_c_prdct_vrtn_dt_C2E7218A] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_vrtn_dtl_prdct_]
    ON [dbo].[sf_ec_product_variation_detail]([product_variation_id] ASC);

