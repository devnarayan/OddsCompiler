CREATE TABLE [dbo].[sf_ec_customer] (
    [user_profile_id]     UNIQUEIDENTIFIER NULL,
    [statistic_id]        UNIQUEIDENTIFIER NULL,
    [profile_provider]    VARCHAR (255)    NULL,
    [profile_id]          UNIQUEIDENTIFIER NULL,
    [last_modified]       DATETIME         NOT NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [customer_last_name]  NVARCHAR (255)   NULL,
    [customer_first_name] NVARCHAR (255)   NULL,
    [customer_email]      NVARCHAR (255)   NULL,
    [application_name]    VARCHAR (255)    NOT NULL,
    [voa_version]         SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_customer] PRIMARY KEY CLUSTERED ([id] ASC)
);

