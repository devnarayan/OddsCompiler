CREATE TABLE [dbo].[sf_calendars] (
    [url_name_]        NVARCHAR (255)   NULL,
    [title_]           NVARCHAR (255)   NULL,
    [publication_date] DATETIME         NOT NULL,
    [ownr]             UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]  DATETIME         NULL,
    [description_]     NVARCHAR (MAX)   NULL,
    [date_created]     DATETIME         NULL,
    [color]            VARCHAR (255)    NULL,
    [app_name]         VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_calendars] PRIMARY KEY CLUSTERED ([id] ASC)
);

