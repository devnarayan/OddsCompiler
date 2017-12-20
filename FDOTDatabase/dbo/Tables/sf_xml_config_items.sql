CREATE TABLE [dbo].[sf_xml_config_items] (
    [path]          VARCHAR (255)    NOT NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [dta]           NVARCHAR (MAX)   NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_xml_config_items] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_xml_config_items]
    ON [dbo].[sf_xml_config_items]([app_name] ASC, [path] ASC);

