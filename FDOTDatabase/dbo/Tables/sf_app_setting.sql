CREATE TABLE [dbo].[sf_app_setting] (
    [policy_type]      VARCHAR (255)    NULL,
    [policy_name]      VARCHAR (255)    NULL,
    [nme]              NVARCHAR (255)   NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [dta]              NVARCHAR (MAX)   NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_app_setting] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_setting_key]
    ON [dbo].[sf_app_setting]([nme] ASC, [policy_type] ASC, [policy_name] ASC);

