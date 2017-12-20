CREATE TABLE [dbo].[sf_ec_order_payment] (
    [successful_payment]             TINYINT          NOT NULL,
    [payment_processor_name]         NVARCHAR (255)   NOT NULL,
    [payment_method_type]            INT              NOT NULL,
    [payment_method_id]              UNIQUEIDENTIFIER NULL,
    [order_id]                       UNIQUEIDENTIFIER NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [gateway_transaction_type]       NVARCHAR (255)   NOT NULL,
    [gateway_transaction_id]         NVARCHAR (255)   NOT NULL,
    [gateway_token]                  NVARCHAR (255)   NOT NULL,
    [gateway_result]                 NVARCHAR (255)   NOT NULL,
    [gateway_response]               NVARCHAR (MAX)   NULL,
    [gateway_profile_id]             NVARCHAR (255)   NOT NULL,
    [gateway_payment_profile_id]     NVARCHAR (255)   NOT NULL,
    [gateway_fraud_response]         NVARCHAR (255)   NOT NULL,
    [gateway_duplicate]              TINYINT          NOT NULL,
    [gateway_c_s_c_response]         NVARCHAR (255)   NOT NULL,
    [gateway_c_s_c]                  NVARCHAR (255)   NOT NULL,
    [gateway_avs_zip]                NVARCHAR (255)   NOT NULL,
    [gtwy_avs_address_international] NVARCHAR (255)   NOT NULL,
    [gateway_avs_address]            NVARCHAR (255)   NOT NULL,
    [gateway_avs]                    NVARCHAR (255)   NOT NULL,
    [gateway_auth_code]              NVARCHAR (255)   NOT NULL,
    [gateway_alt_transaction_id]     NVARCHAR (255)   NOT NULL,
    [gateway_additional_result]      NVARCHAR (255)   NOT NULL,
    [gateway_additional_response]    NVARCHAR (255)   NOT NULL,
    [gateway_a_p_i_version]          NVARCHAR (255)   NOT NULL,
    [fraud_score]                    INT              NOT NULL,
    [credit_card_type]               INT              NOT NULL,
    [credit_card_number_last_four]   VARCHAR (255)    NULL,
    [credit_card_number]             VARCHAR (255)    NOT NULL,
    [credit_card_issue_number]       INT              NOT NULL,
    [credit_card_expire_year]        INT              NOT NULL,
    [credit_card_expire_month]       INT              NOT NULL,
    [credit_card_expire_day]         INT              NOT NULL,
    [credit_card_customer_name]      NVARCHAR (255)   NOT NULL,
    [credit_card_bank_phone]         NVARCHAR (255)   NULL,
    [attempt_number]                 INT              NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_payment] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_rder_payment_order_id]
    ON [dbo].[sf_ec_order_payment]([order_id] ASC);

