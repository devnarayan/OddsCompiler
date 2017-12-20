CREATE TABLE [dbo].[sf_ec_order_detail_var_lnk] (
    [product_variation_id] UNIQUEIDENTIFIER NULL,
    [order_detail_id]      UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [app_name]             VARCHAR (255)    NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_detail_var_lnk] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_rdr_dtl_vr_lnk_rdr_dt]
    ON [dbo].[sf_ec_order_detail_var_lnk]([order_detail_id] ASC);

