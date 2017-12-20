CREATE TABLE [dbo].[sf_publishing_mapping] (
    [typ]                       VARCHAR (255)    NULL,
    [is_required]               TINYINT          NOT NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [destination_property_name] VARCHAR (255)    NOT NULL,
    [defaultvalue]              VARCHAR (255)    NULL,
    [application_name]          VARCHAR (255)    NULL,
    [last_modified]             DATETIME         NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_publishing_mapping] PRIMARY KEY CLUSTERED ([id] ASC)
);

