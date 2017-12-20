CREATE TABLE [dbo].[sf_user_action] (
    [user_id]          UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [exipration_date]  DATETIME         NOT NULL,
    [data_item_id]     UNIQUEIDENTIFIER NULL,
    [dta]              VARCHAR (255)    NULL,
    [context]          VARCHAR (255)    NULL,
    [application_name] VARCHAR (255)    NULL,
    [action_name]      VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_user_action] PRIMARY KEY CLUSTERED ([id] ASC)
);

