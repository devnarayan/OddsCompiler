CREATE TABLE [dbo].[sf_forum_threads] (
    [views_count]         INT              NOT NULL,
    [url_name_]           NVARCHAR (255)   NULL,
    [title]               NVARCHAR (255)   NULL,
    [threadType]          INT              NOT NULL,
    [subscr_lst_id]       UNIQUEIDENTIFIER NULL,
    [posts_count]         INT              NOT NULL,
    [ownr]                UNIQUEIDENTIFIER NULL,
    [last_post_user_name] NVARCHAR (255)   NULL,
    [last_post_user_id]   UNIQUEIDENTIFIER NULL,
    [last_post_id]        UNIQUEIDENTIFIER NULL,
    [last_post_date]      DATETIME         NULL,
    [last_modified]       DATETIME         NOT NULL,
    [item_default_url_]   NVARCHAR (255)   NULL,
    [is_published]        TINYINT          NOT NULL,
    [is_marked_spam]      TINYINT          NOT NULL,
    [is_locked]           TINYINT          NOT NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [forum_id]            UNIQUEIDENTIFIER NOT NULL,
    [first_post_id]       UNIQUEIDENTIFIER NULL,
    [date_created]        DATETIME         NOT NULL,
    [block_crawlers]      TINYINT          NOT NULL,
    [app_name]            VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_forum_threads] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_forum_threads]
    ON [dbo].[sf_forum_threads]([forum_id] ASC, [last_post_date] ASC);

