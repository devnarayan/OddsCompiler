CREATE TABLE [dbo].[sf_ec_order_download] (
    [order_id]         UNIQUEIDENTIFIER NOT NULL,
    [order_detail_id]  UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [content_id]       UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_download] PRIMARY KEY CLUSTERED ([id] ASC)
);

