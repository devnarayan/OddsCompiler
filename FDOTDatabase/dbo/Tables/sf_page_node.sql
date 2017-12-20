CREATE TABLE [dbo].[sf_page_node] (
    [url_name_]                    NVARCHAR (255)   NULL,
    [title_]                       NVARCHAR (500)   NULL,
    [show_in_navigation]           TINYINT          NOT NULL,
    [root_id]                      UNIQUEIDENTIFIER NULL,
    [require_ssl]                  TINYINT          NOT NULL,
    [render_as_link]               TINYINT          NOT NULL,
    [redirect_url_]                NVARCHAR (255)   NULL,
    [priority]                     REAL             NOT NULL,
    [previous_parent_id]           UNIQUEIDENTIFIER NULL,
    [parent_id]                    UNIQUEIDENTIFIER NULL,
    [content_id]                   UNIQUEIDENTIFIER NULL,
    [ownr]                         UNIQUEIDENTIFIER NULL,
    [ordinal]                      REAL             NOT NULL,
    [open_new_window]              TINYINT          NOT NULL,
    [node_type]                    INT              NOT NULL,
    [nme]                          VARCHAR (255)    NULL,
    [module_name]                  VARCHAR (255)    NULL,
    [loc_strtgy]                   SMALLINT         NOT NULL,
    [linked_node_provider]         VARCHAR (255)    NULL,
    [linked_node_id]               UNIQUEIDENTIFIER NULL,
    [last_modified]                DATETIME         NULL,
    [is_deleted]                   TINYINT          NOT NULL,
    [inherits_permissions]         TINYINT          NOT NULL,
    [inc_in_srch_idx]              TINYINT          NOT NULL,
    [id]                           UNIQUEIDENTIFIER NOT NULL,
    [extension]                    NVARCHAR (255)   NULL,
    [enable_default_canonical_url] TINYINT          NULL,
    [description_]                 NVARCHAR (500)   NULL,
    [date_created]                 DATETIME         NULL,
    [crawlable]                    TINYINT          NOT NULL,
    [can_inherit_permissions]      TINYINT          NOT NULL,
    [approval_workflow_state_]     NVARCHAR (255)   NULL,
    [app_name]                     VARCHAR (255)    NULL,
    [allow_parameters_validation]  TINYINT          NOT NULL,
    [allow_multiple_urls]          TINYINT          NOT NULL,
    CONSTRAINT [pk_sf_page_node] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pages_root_id]
    ON [dbo].[sf_page_node]([root_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_node_parent_id]
    ON [dbo].[sf_page_node]([parent_id] ASC);

