CREATE TABLE [dbo].[sf_url_data] (
    [url]           NVARCHAR (510)   NULL,
    [redirect]      TINYINT          NOT NULL,
    [qery]          VARCHAR (255)    NULL,
    [last_modified] DATETIME         NULL,
    [is_default]    TINYINT          NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [disabled]      TINYINT          NOT NULL,
    [culture]       INT              NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    [voa_class]     INT              NOT NULL,
    [content_id]    UNIQUEIDENTIFIER NULL,
    [id2]           UNIQUEIDENTIFIER NULL,
    [item_type]     VARCHAR (256)    NULL,
    CONSTRAINT [pk_sf_url_data] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data]
    ON [dbo].[sf_url_data]([url] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data_content_id]
    ON [dbo].[sf_url_data]([content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_data_id2]
    ON [dbo].[sf_url_data]([id2] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_url_type]
    ON [dbo].[sf_url_data]([item_type] ASC, [url] ASC);

