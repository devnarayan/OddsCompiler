CREATE TABLE [dbo].[sf_pipe_mapping_translation] (
    [translator_settings] VARCHAR (255)    NULL,
    [translator_name]     VARCHAR (255)    NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [application_name]    VARCHAR (255)    NULL,
    [last_modified]       DATETIME         NULL,
    [voa_version]         SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_pipe_mapping_translation] PRIMARY KEY CLUSTERED ([id] ASC)
);

