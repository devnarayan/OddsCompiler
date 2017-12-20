CREATE TABLE [dbo].[sf_ec_payment_method] (
    [title_]                     NVARCHAR (255)   NULL,
    [payment_processor_settings] NVARCHAR (MAX)   NULL,
    [payment_processor_id]       UNIQUEIDENTIFIER NOT NULL,
    [payment_method_type]        INT              NOT NULL,
    [pay_flow_pro_settings]      NVARCHAR (MAX)   NULL,
    [last_modified]              DATETIME         NOT NULL,
    [is_active]                  TINYINT          NOT NULL,
    [id]                         UNIQUEIDENTIFIER NOT NULL,
    [description_]               NVARCHAR (MAX)   NULL,
    [auth_net_settings]          NVARCHAR (MAX)   NULL,
    [application_name]           VARCHAR (255)    NOT NULL,
    [voa_version]                SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_payment_method] PRIMARY KEY CLUSTERED ([id] ASC)
);

