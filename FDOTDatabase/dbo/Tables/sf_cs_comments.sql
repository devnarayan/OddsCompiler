CREATE TABLE [dbo].[sf_cs_comments] (
    [status]                 NVARCHAR (100)   NULL,
    [resolve_key]            NVARCHAR (255)   NOT NULL,
    [rating]                 NUMERIC (20, 10) NULL,
    [parent_thread_id]       UNIQUEIDENTIFIER NOT NULL,
    [message]                NVARCHAR (MAX)   NULL,
    [last_modified_by_name]  VARCHAR (255)    NULL,
    [last_modified_by_email] VARCHAR (255)    NULL,
    [last_modified_by]       UNIQUEIDENTIFIER NULL,
    [last_modified]          DATETIME         NULL,
    [date_created]           DATETIME         NULL,
    [custom_data]            NVARCHAR (1024)  NULL,
    [author_name]            NVARCHAR (255)   NULL,
    [author_ip_address]      NVARCHAR (255)   NULL,
    [author_id]              UNIQUEIDENTIFIER NULL,
    [author_email]           NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_cs_comments] PRIMARY KEY CLUSTERED ([resolve_key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cs_comments_thread]
    ON [dbo].[sf_cs_comments]([parent_thread_id] ASC, [date_created] ASC);

