CREATE TABLE [dbo].[sf_ec_cart_payment] (
    [payment_method_type]          INT              NOT NULL,
    [payment_method_id]            UNIQUEIDENTIFIER NULL,
    [cart_order_id]                UNIQUEIDENTIFIER NULL,
    [last_modified]                DATETIME         NOT NULL,
    [id]                           UNIQUEIDENTIFIER NOT NULL,
    [credit_card_type]             INT              NOT NULL,
    [credit_card_number_last_four] VARCHAR (255)    NULL,
    [credit_card_number]           VARCHAR (255)    NOT NULL,
    [credit_card_issue_number]     INT              NOT NULL,
    [credit_card_expire_year]      INT              NOT NULL,
    [credit_card_expire_month]     INT              NOT NULL,
    [credit_card_expire_day]       INT              NOT NULL,
    [credit_card_customer_name]    NVARCHAR (255)   NOT NULL,
    [credit_card_bank_phone]       NVARCHAR (255)   NULL,
    [application_name]             VARCHAR (255)    NULL,
    [voa_version]                  SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_cart_payment] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_crt_pymnt_crt_rder_id]
    ON [dbo].[sf_ec_cart_payment]([cart_order_id] ASC);

