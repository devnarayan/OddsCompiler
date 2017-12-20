CREATE TABLE [dbo].[sf_rbin_item] (
    [owner]                     UNIQUEIDENTIFIER NULL,
    [last_modified]             DATETIME         NOT NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [del_item_wrkfl_status]     VARCHAR (255)    NULL,
    [del_item_type_name]        VARCHAR (255)    NULL,
    [del_item_title]            NVARCHAR (255)   NULL,
    [del_item_site_id]          UNIQUEIDENTIFIER NULL,
    [del_item_prvdr_name]       VARCHAR (255)    NULL,
    [del_item_parent_type_name] VARCHAR (255)    NULL,
    [del_item_titles_path]      NVARCHAR (MAX)   NULL,
    [del_item_lang]             VARCHAR (255)    NULL,
    [del_item_id]               UNIQUEIDENTIFIER NULL,
    [date_created]              DATETIME         NOT NULL,
    [app_name]                  VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_rbin_item] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_rbin_item_type_prov_id]
    ON [dbo].[sf_rbin_item]([del_item_type_name] ASC, [del_item_prvdr_name] ASC, [del_item_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_rbin_date_created]
    ON [dbo].[sf_rbin_item]([date_created] ASC);

