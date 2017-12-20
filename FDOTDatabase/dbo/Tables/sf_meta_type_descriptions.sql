CREATE TABLE [dbo].[sf_meta_type_descriptions] (
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [app_name]           NVARCHAR (255)   NULL,
    [meta_type_id]       UNIQUEIDENTIFIER NULL,
    [user_friendly_name] NVARCHAR (255)   NULL,
    [description]        NVARCHAR (255)   NULL,
    [voa_version]        SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_meta_type_descriptions] PRIMARY KEY CLUSTERED ([id] ASC)
);

