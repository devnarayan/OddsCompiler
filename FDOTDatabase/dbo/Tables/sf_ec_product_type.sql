CREATE TABLE [dbo].[sf_ec_product_type] (
    [title_]                NVARCHAR (255)   NULL,
    [title_plural_]         NVARCHAR (255)   NULL,
    [product_delivery_type] INT              NOT NULL,
    [last_modified]         DATETIME         NOT NULL,
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [clr_type]              VARCHAR (255)    NULL,
    [application_name]      VARCHAR (255)    NULL,
    [is_shippable]          TINYINT          NOT NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_product_type] PRIMARY KEY CLUSTERED ([id] ASC)
);

