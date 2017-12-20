CREATE TABLE [dbo].[sf_ec_wishlist_detail_var_lnk] (
    [wishlist_detail_id]   UNIQUEIDENTIFIER NULL,
    [product_variation_id] UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [app_name]             VARCHAR (255)    NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_c_wshlst_dtl_vr_20E33F9E] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_wshlst_dtl_vr_lnk_wsh]
    ON [dbo].[sf_ec_wishlist_detail_var_lnk]([wishlist_detail_id] ASC);

