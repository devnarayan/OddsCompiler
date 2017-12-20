CREATE TABLE [dbo].[sf_subscriber] (
    [short_id]         VARCHAR (255)    NULL,
    [last_name]        NVARCHAR (255)   NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_suspended]     TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [first_name]       NVARCHAR (255)   NULL,
    [email]            VARCHAR (255)    NULL,
    [date_created]     DATETIME         NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_subscriber] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_subscr_email_app_name]
    ON [dbo].[sf_subscriber]([email] ASC, [application_name] ASC);

