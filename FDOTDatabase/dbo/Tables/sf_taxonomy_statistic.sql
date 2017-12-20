CREATE TABLE [dbo].[sf_taxonomy_statistic] (
    [taxonomy_id]        UNIQUEIDENTIFIER NULL,
    [taxon_id]           UNIQUEIDENTIFIER NULL,
    [statistic_type]     INT              NOT NULL,
    [marked_items_count] BIGINT           NOT NULL,
    [item_provider_name] VARCHAR (255)    NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [data_item_type]     VARCHAR (255)    NULL,
    [application_name]   VARCHAR (255)    NULL,
    [voa_version]        SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_taxonomy_statistic] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_taxonomy_statistic]
    ON [dbo].[sf_taxonomy_statistic]([data_item_type] ASC, [taxon_id] ASC, [statistic_type] ASC, [item_provider_name] ASC);

