CREATE TABLE [dbo].[sf_cs_threads] (
    [type]                   NVARCHAR (255)   NULL,
    [title]                  NVARCHAR (255)   NULL,
    [resolve_key]            NVARCHAR (255)   NULL,
    [require_authentication] TINYINT          NOT NULL,
    [require_approval]       TINYINT          NOT NULL,
    [parent_group_id]        UNIQUEIDENTIFIER NOT NULL,
    [last_modified]          DATETIME         NOT NULL,
    [language]               NVARCHAR (10)    NULL,
    [is_closed]              TINYINT          NOT NULL,
    [id]                     UNIQUEIDENTIFIER NOT NULL,
    [date_created]           DATETIME         NULL,
    [data_source]            NVARCHAR (255)   NULL,
    [comments_count]         INT              NOT NULL,
    [behavior]               NVARCHAR (100)   NULL,
    [average_rating]         NUMERIC (20, 10) NULL,
    [author_name]            NVARCHAR (255)   NULL,
    [author_id]              UNIQUEIDENTIFIER NULL,
    [author_email]           NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_cs_threads] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_cs_threads_key]
    ON [dbo].[sf_cs_threads]([resolve_key] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cs_threads_group]
    ON [dbo].[sf_cs_threads]([parent_group_id] ASC);

