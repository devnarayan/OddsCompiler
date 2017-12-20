CREATE TABLE [dbo].[sf_publishing_point_settings] (
    [id2]              UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_pblshng_pnt_stt_9CE0E251] PRIMARY KEY CLUSTERED ([id] ASC)
);

