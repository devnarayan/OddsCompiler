CREATE TABLE [dbo].[sf_language_data] (
    [scheduled_date]   DATETIME         NULL,
    [publication_date] DATETIME         NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [language_version] INT              NOT NULL,
    [language]         VARCHAR (255)    NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]  DATETIME         NULL,
    [content_state]    INT              NOT NULL,
    [app_name]         VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_language_data] PRIMARY KEY CLUSTERED ([id] ASC)
);

