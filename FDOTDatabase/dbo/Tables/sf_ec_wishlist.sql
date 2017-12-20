CREATE TABLE [dbo].[sf_ec_wishlist] (
    [wishlist_date]       DATETIME         NOT NULL,
    [user_id]             UNIQUEIDENTIFIER NOT NULL,
    [ttal]                NUMERIC (20, 10) NOT NULL,
    [title_]              NVARCHAR (255)   NULL,
    [privacy_option]      INT              NOT NULL,
    [last_modified]       DATETIME         NOT NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [exchange_rate_total] NUMERIC (20, 10) NOT NULL,
    [currency]            VARCHAR (255)    NOT NULL,
    [application_name]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ec_wishlist] PRIMARY KEY CLUSTERED ([id] ASC)
);

