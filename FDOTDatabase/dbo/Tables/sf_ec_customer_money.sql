CREATE TABLE [dbo].[sf_ec_customer_money] (
    [ttal]             NUMERIC (20, 10) NOT NULL,
    [customer_id]      UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [currency_info]    VARCHAR (255)    NOT NULL,
    [currency]         VARCHAR (255)    NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_customer_money] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_cstmr_mny_customer_id]
    ON [dbo].[sf_ec_customer_money]([customer_id] ASC);

