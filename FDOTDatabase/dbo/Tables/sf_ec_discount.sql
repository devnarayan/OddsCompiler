CREATE TABLE [dbo].[sf_ec_discount] (
    [usge]                    INT              NOT NULL,
    [title_]                  NVARCHAR (255)   NULL,
    [start_date]              DATETIME         NOT NULL,
    [minimum_subtotal]        NUMERIC (20, 10) NOT NULL,
    [maximum_subtotal]        NUMERIC (20, 10) NULL,
    [last_modified]           DATETIME         NOT NULL,
    [is_coupon_code_required] TINYINT          NOT NULL,
    [is_active]               TINYINT          NOT NULL,
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [end_date]                DATETIME         NULL,
    [discount_used]           INT              NOT NULL,
    [discount_type]           INT              NOT NULL,
    [discount_amount_type]    INT              NOT NULL,
    [discount_amount]         NUMERIC (20, 10) NOT NULL,
    [coupon_code]             NVARCHAR (255)   NULL,
    [apply_for]               INT              NOT NULL,
    [application_name]        VARCHAR (255)    NOT NULL,
    [voa_version]             SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_discount] PRIMARY KEY CLUSTERED ([id] ASC)
);

