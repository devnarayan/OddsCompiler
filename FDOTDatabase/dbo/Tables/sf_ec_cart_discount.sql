CREATE TABLE [dbo].[sf_ec_cart_discount] (
    [title_]               NVARCHAR (255)   NULL,
    [title]                NVARCHAR (255)   NOT NULL,
    [savings_amount]       NUMERIC (20, 10) NOT NULL,
    [cart_order_id]        UNIQUEIDENTIFIER NULL,
    [discount_id]          UNIQUEIDENTIFIER NULL,
    [last_modified]        DATETIME         NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [discount_type]        INT              NOT NULL,
    [discount_amount_type] INT              NOT NULL,
    [discount_amount]      NUMERIC (20, 10) NOT NULL,
    [application_name]     VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ec_cart_discount] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_crt_dscnt_crt_rder_id]
    ON [dbo].[sf_ec_cart_discount]([cart_order_id] ASC);

