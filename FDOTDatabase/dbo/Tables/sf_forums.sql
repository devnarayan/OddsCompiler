CREATE TABLE [dbo].[sf_forums] (
    [url_name_]                     NVARCHAR (255)   NULL,
    [title]                         NVARCHAR (255)   NULL,
    [threads_count]                 INT              NOT NULL,
    [subscr_lst_id]                 UNIQUEIDENTIFIER NULL,
    [posts_count]                   INT              NOT NULL,
    [ownr]                          UNIQUEIDENTIFIER NULL,
    [ordinal]                       REAL             NOT NULL,
    [last_thread_id]                UNIQUEIDENTIFIER NULL,
    [last_post_user_name]           NVARCHAR (255)   NULL,
    [last_post_user_id]             UNIQUEIDENTIFIER NULL,
    [last_post_id]                  UNIQUEIDENTIFIER NULL,
    [last_post_date]                DATETIME         NULL,
    [last_modified]                 DATETIME         NOT NULL,
    [item_default_url_]             NVARCHAR (255)   NULL,
    [is_locked]                     TINYINT          NOT NULL,
    [inherits_permissions]          TINYINT          NOT NULL,
    [include_in_sitemap]            TINYINT          NULL,
    [id]                            UNIQUEIDENTIFIER NOT NULL,
    [icon_id]                       UNIQUEIDENTIFIER NULL,
    [group_id]                      UNIQUEIDENTIFIER NULL,
    [description]                   NVARCHAR (255)   NULL,
    [defaultPageId]                 UNIQUEIDENTIFIER NULL,
    [date_created]                  DATETIME         NOT NULL,
    [can_inherit_permissions]       TINYINT          NOT NULL,
    [attachmentsRequiredRole]       VARCHAR (255)    NULL,
    [app_name]                      VARCHAR (255)    NULL,
    [allowed_attachment_extensions] VARCHAR (MAX)    NULL,
    [allowAttachments]              TINYINT          NOT NULL,
    CONSTRAINT [pk_sf_forums] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_forums_group_id]
    ON [dbo].[sf_forums]([app_name] ASC, [group_id] ASC);

