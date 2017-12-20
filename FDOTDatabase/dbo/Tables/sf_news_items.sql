CREATE TABLE [dbo].[sf_news_items] (
    [votes_sum]                NUMERIC (20, 10) NOT NULL,
    [votes_count]              BIGINT           NOT NULL,
    [visible]                  TINYINT          NOT NULL,
    [views_count]              INT              NOT NULL,
    [vrsion]                   INT              NOT NULL,
    [url_name_]                NVARCHAR (255)   NULL,
    [title_]                   NVARCHAR (255)   NULL,
    [status]                   INT              NOT NULL,
    [source_key]               VARCHAR (255)    NULL,
    [publication_date]         DATETIME         NOT NULL,
    [post_rights]              INT              NOT NULL,
    [ownr]                     UNIQUEIDENTIFIER NULL,
    [original_content_id]      UNIQUEIDENTIFIER NULL,
    [last_modified_by]         UNIQUEIDENTIFIER NULL,
    [last_modified]            DATETIME         NULL,
    [include_in_sitemap]       TINYINT          NULL,
    [content_id]               UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]          DATETIME         NULL,
    [email_author]             TINYINT          NULL,
    [draft_culture]            VARCHAR (255)    NULL,
    [description_]             NVARCHAR (MAX)   NULL,
    [default_page_id]          UNIQUEIDENTIFIER NULL,
    [date_created]             DATETIME         NULL,
    [content_state]            VARCHAR (255)    NULL,
    [approve_comments]         TINYINT          NULL,
    [app_name]                 VARCHAR (255)    NULL,
    [allow_track_backs]        TINYINT          NULL,
    [allow_comments]           TINYINT          NULL,
    [was_published]            TINYINT          NULL,
    [summary_]                 NVARCHAR (4000)  NULL,
    [source_site]              NVARCHAR (255)   NULL,
    [source_name]              NVARCHAR (255)   NULL,
    [item_default_url_]        NVARCHAR (510)   NULL,
    [inherits_permissions]     TINYINT          NOT NULL,
    [content_]                 NVARCHAR (MAX)   NULL,
    [can_inherit_permissions]  TINYINT          NOT NULL,
    [author_]                  NVARCHAR (255)   NULL,
    [approval_workflow_state_] NVARCHAR (255)   NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_news_items] PRIMARY KEY CLUSTERED ([content_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_news_org_cnt_id]
    ON [dbo].[sf_news_items]([original_content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_news]
    ON [dbo].[sf_news_items]([app_name] ASC);

