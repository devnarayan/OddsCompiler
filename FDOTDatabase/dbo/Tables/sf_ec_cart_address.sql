﻿CREATE TABLE [dbo].[sf_ec_cart_address] (
    [state_region]     NVARCHAR (255)   NULL,
    [postal_code]      NVARCHAR (255)   NOT NULL,
    [phone_extension]  NVARCHAR (255)   NULL,
    [phone]            NVARCHAR (255)   NULL,
    [cart_order_id]    UNIQUEIDENTIFIER NULL,
    [last_name]        NVARCHAR (255)   NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [first_name]       NVARCHAR (255)   NOT NULL,
    [fax]              NVARCHAR (255)   NULL,
    [email]            NVARCHAR (255)   NULL,
    [county]           NVARCHAR (255)   NULL,
    [country]          NVARCHAR (255)   NOT NULL,
    [company]          NVARCHAR (255)   NULL,
    [city]             NVARCHAR (255)   NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [address_type]     INT              NOT NULL,
    [address2]         NVARCHAR (255)   NULL,
    [address]          NVARCHAR (255)   NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_cart_address] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_crt_ddrss_crt_rder_id]
    ON [dbo].[sf_ec_cart_address]([cart_order_id] ASC);
