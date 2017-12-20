CREATE TABLE [dbo].[sf_addresses] (
    [zip]            NVARCHAR (255)   NULL,
    [street]         NVARCHAR (255)   NULL,
    [state_code]     NVARCHAR (255)   NULL,
    [map_zoom_level] INT              NULL,
    [longitude]      FLOAT (53)       NULL,
    [latitude]       FLOAT (53)       NULL,
    [id]             UNIQUEIDENTIFIER NOT NULL,
    [country_code]   NVARCHAR (255)   NULL,
    [city]           NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_addresses] PRIMARY KEY CLUSTERED ([id] ASC)
);

