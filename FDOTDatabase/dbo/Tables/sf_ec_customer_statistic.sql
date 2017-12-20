CREATE TABLE [dbo].[sf_ec_customer_statistic] (
    [orders_count]      INT              NOT NULL,
    [last_order_number] INT              NOT NULL,
    [last_order_date]   DATETIME         NOT NULL,
    [last_modified]     DATETIME         NOT NULL,
    [id]                UNIQUEIDENTIFIER NOT NULL,
    [application_name]  VARCHAR (255)    NOT NULL,
    [voa_version]       SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_customer_statistic] PRIMARY KEY CLUSTERED ([id] ASC)
);

