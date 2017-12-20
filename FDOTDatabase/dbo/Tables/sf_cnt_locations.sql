CREATE TABLE [dbo].[sf_cnt_locations] (
    [site_id]              UNIQUEIDENTIFIER NULL,
    [redirect_page_id]     UNIQUEIDENTIFIER NULL,
    [priority]             INT              NOT NULL,
    [page_id]              UNIQUEIDENTIFIER NULL,
    [lang]                 VARCHAR (20)     NULL,
    [item_type]            VARCHAR (255)    NOT NULL,
    [item_provider]        NVARCHAR (100)   NULL,
    [item_descendant_type] VARCHAR (255)    NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [app_name]             VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_cnt_locations] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_cnt_locations_type]
    ON [dbo].[sf_cnt_locations]([app_name] ASC, [item_type] ASC, [item_provider] ASC, [priority] ASC);

