CREATE TABLE [dbo].[sf_user_profile] (
    [url_name_]     NVARCHAR (255)   NULL,
    [title_]        NVARCHAR (255)   NULL,
    [source_key]    NVARCHAR (255)   NULL,
    [user_id]       UNIQUEIDENTIFIER NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description_]  NVARCHAR (255)   NULL,
    [date_created]  DATETIME         NOT NULL,
    [app_name]      NVARCHAR (255)   NULL,
    [voa_class]     INT              NOT NULL,
    CONSTRAINT [pk_sf_user_profile] PRIMARY KEY CLUSTERED ([id] ASC)
);

