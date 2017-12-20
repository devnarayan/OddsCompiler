CREATE TABLE [dbo].[sf_media_content] (
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
    [lgcy_tmb_strg]            TINYINT          NOT NULL,
    [uploaded]                 TINYINT          NOT NULL,
    [tmb_vrsn]                 INT              NOT NULL,
    [parent_id]                UNIQUEIDENTIFIER NULL,
    [ordinal]                  REAL             NOT NULL,
    [tmb_regen]                TINYINT          NOT NULL,
    [media_file_url_name_]     NVARCHAR (510)   NULL,
    [item_default_url_]        NVARCHAR (510)   NULL,
    [inherits_permissions]     TINYINT          NOT NULL,
    [folder_id]                UNIQUEIDENTIFIER NULL,
    [can_inherit_permissions]  TINYINT          NOT NULL,
    [blob_storage]             VARCHAR (255)    NULL,
    [author_]                  NVARCHAR (255)   NULL,
    [approval_workflow_state_] NVARCHAR (255)   NULL,
    [voa_class]                INT              NOT NULL,
    [voa_version]              SMALLINT         NOT NULL,
    [parts_]                   NVARCHAR (255)   NULL,
    [alternative_text_]        NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_media_content] PRIMARY KEY CLUSTERED ([content_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_media_content_parent_id]
    ON [dbo].[sf_media_content]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_media_cnt_org_cnt_id]
    ON [dbo].[sf_media_content]([original_content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_media_cnt_fldr_id]
    ON [dbo].[sf_media_content]([folder_id] ASC);

