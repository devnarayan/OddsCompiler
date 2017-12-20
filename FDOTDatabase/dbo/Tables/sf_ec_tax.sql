CREATE TABLE [dbo].[sf_ec_tax] (
    [use_zip_range]         TINYINT          NOT NULL,
    [to_zip]                VARCHAR (255)    NULL,
    [title_]                NVARCHAR (255)   NULL,
    [tax_rates]             NVARCHAR (MAX)   NULL,
    [tax_rate]              NUMERIC (20, 10) NOT NULL,
    [stte]                  VARCHAR (255)    NULL,
    [last_modified]         DATETIME         NOT NULL,
    [include_tax_in_price]  TINYINT          NOT NULL,
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [from_zip]              VARCHAR (255)    NULL,
    [county]                VARCHAR (255)    NULL,
    [country]               VARCHAR (255)    NOT NULL,
    [city]                  VARCHAR (255)    NULL,
    [apply_tax_to_shipping] TINYINT          NOT NULL,
    [application_name]      VARCHAR (255)    NOT NULL,
    [address_type]          INT              NOT NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_tax] PRIMARY KEY CLUSTERED ([id] ASC)
);

