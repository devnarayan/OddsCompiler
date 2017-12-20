CREATE TABLE [dbo].[sf_site_data_source_links] (
    [site_id]          UNIQUEIDENTIFIER NULL,
    [provider_name]    VARCHAR (255)    NULL,
    [is_default]       BIT              NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [dataSource_name]  VARCHAR (255)    NULL,
    [application_name] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_site_data_source_links] PRIMARY KEY CLUSTERED ([id] ASC)
);

