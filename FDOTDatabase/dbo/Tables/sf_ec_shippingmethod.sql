CREATE TABLE [dbo].[sf_ec_shippingmethod] (
    [title_]                   NVARCHAR (255)   NULL,
    [sort_order]               INT              NOT NULL,
    [shipping_price]           VARCHAR (255)    NOT NULL,
    [shipping_method_type]     INT              NOT NULL,
    [shipping_method_settings] NVARCHAR (MAX)   NULL,
    [shipping_carrier_id]      UNIQUEIDENTIFIER NOT NULL,
    [nme]                      NVARCHAR (255)   NOT NULL,
    [last_modified]            DATETIME         NOT NULL,
    [is_active]                TINYINT          NOT NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [area]                     NVARCHAR (MAX)   NULL,
    [application_name]         VARCHAR (255)    NOT NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_shippingmethod] PRIMARY KEY CLUSTERED ([id] ASC)
);

