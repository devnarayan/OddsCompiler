CREATE TABLE [dbo].[sf_ec_order_statistic] (
    [statistic_date]      DATETIME         NOT NULL,
    [number_of_orders]    INT              NOT NULL,
    [last_modified]       DATETIME         NOT NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [application_name]    VARCHAR (255)    NULL,
    [aggregate_total]     NUMERIC (20, 10) NOT NULL,
    [aggregate_tax]       NUMERIC (20, 10) NOT NULL,
    [aggregate_sub_total] NUMERIC (20, 10) NOT NULL,
    [aggregate_shipping]  NUMERIC (20, 10) NULL,
    [aggregate_discounts] NUMERIC (20, 10) NOT NULL,
    [voa_version]         SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_statistic] PRIMARY KEY CLUSTERED ([id] ASC)
);

