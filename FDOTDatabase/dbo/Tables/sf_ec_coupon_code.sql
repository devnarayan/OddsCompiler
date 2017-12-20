CREATE TABLE [dbo].[sf_ec_coupon_code] (
    [cart_order_id]    UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [code]             NVARCHAR (255)   NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_coupon_code] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_cpn_cde_cart_order_id]
    ON [dbo].[sf_ec_coupon_code]([cart_order_id] ASC);

