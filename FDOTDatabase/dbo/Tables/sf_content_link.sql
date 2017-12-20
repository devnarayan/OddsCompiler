CREATE TABLE [dbo].[sf_content_link] (
    [parent_item_type]            VARCHAR (255)    NULL,
    [parent_item_provider_name]   VARCHAR (255)    NULL,
    [parent_item_id]              UNIQUEIDENTIFIER NULL,
    [parent_item_additional_info] VARCHAR (512)    NULL,
    [ordinal]                     REAL             NOT NULL,
    [last_modified]               DATETIME         NOT NULL,
    [is_parent_deleted]           TINYINT          NOT NULL,
    [is_child_deleted]            TINYINT          NOT NULL,
    [id]                          UNIQUEIDENTIFIER NOT NULL,
    [component_property_name]     VARCHAR (255)    NULL,
    [child_item_type]             VARCHAR (255)    NULL,
    [child_item_provider_name]    VARCHAR (255)    NULL,
    [child_item_id]               UNIQUEIDENTIFIER NULL,
    [child_item_additional_info]  NVARCHAR (1024)  NULL,
    [available_for_temp]          TINYINT          NOT NULL,
    [available_for_master]        TINYINT          NOT NULL,
    [available_for_live]          TINYINT          NOT NULL,
    [app_name]                    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_content_link] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_prnt_itm_id]
    ON [dbo].[sf_content_link]([parent_item_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_chld_type_id]
    ON [dbo].[sf_content_link]([child_item_type] ASC, [child_item_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cnt_lnk_chld_itm_id]
    ON [dbo].[sf_content_link]([child_item_id] ASC);

