CREATE TABLE [dbo].[sf_site_item_links] (
    [site_id]          UNIQUEIDENTIFIER NOT NULL,
    [item_type]        VARCHAR (255)    NOT NULL,
    [item_id]          UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_site_item_links] PRIMARY KEY CLUSTERED ([item_id] ASC, [item_type] ASC, [site_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_links_item_id_type]
    ON [dbo].[sf_site_item_links]([item_id] ASC, [item_type] ASC);

