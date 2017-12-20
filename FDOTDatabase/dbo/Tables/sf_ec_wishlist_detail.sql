CREATE TABLE [dbo].[sf_ec_wishlist_detail] (
    [weight]           FLOAT (53)       NOT NULL,
    [variant_as_names] NVARCHAR (MAX)   NULL,
    [variant_as_ids]   NVARCHAR (MAX)   NULL,
    [ttal]             NUMERIC (20, 10) NOT NULL,
    [title_]           NVARCHAR (255)   NULL,
    [tax_rate]         NUMERIC (20, 10) NOT NULL,
    [tax_in_price]     TINYINT          NOT NULL,
    [tax_class_id]     UNIQUEIDENTIFIER NULL,
    [sku]              NVARCHAR (255)   NULL,
    [quantity_got]     INT              NOT NULL,
    [quantity]         INT              NOT NULL,
    [purchase_status]  INT              NOT NULL,
    [product_id]       UNIQUEIDENTIFIER NOT NULL,
    [price]            NUMERIC (20, 10) NOT NULL,
    [wishlist_id]      UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_on_sale]       TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [description]      NVARCHAR (MAX)   NULL,
    [delta_price]      NUMERIC (20, 10) NOT NULL,
    [created_date]     DATETIME         NOT NULL,
    [base_price]       NUMERIC (20, 10) NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ec_wishlist_detail] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_wshlst_dtl_wshlist_id]
    ON [dbo].[sf_ec_wishlist_detail]([wishlist_id] ASC);

