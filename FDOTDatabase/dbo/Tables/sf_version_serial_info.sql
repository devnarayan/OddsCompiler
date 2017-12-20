CREATE TABLE [dbo].[sf_version_serial_info] (
    [last_modified] DATETIME         NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [formatter]     VARCHAR (255)    NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_version_serial_info] PRIMARY KEY CLUSTERED ([id] ASC)
);

