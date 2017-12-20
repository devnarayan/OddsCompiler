CREATE TABLE [dbo].[sf_publishing_mapping_settings] (
    [last_modified]    DATETIME         NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_s_8F8AE549] PRIMARY KEY CLUSTERED ([id] ASC)
);

