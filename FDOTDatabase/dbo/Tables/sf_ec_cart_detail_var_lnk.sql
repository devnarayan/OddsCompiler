CREATE TABLE [dbo].[sf_ec_cart_detail_var_lnk] (
    [product_variation_id] UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [cart_detail_id]       UNIQUEIDENTIFIER NULL,
    [app_name]             VARCHAR (255)    NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_cart_detail_var_lnk] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_crt_dtl_vr_lnk_crt_dt]
    ON [dbo].[sf_ec_cart_detail_var_lnk]([cart_detail_id] ASC);

