CREATE TABLE [dbo].[sf_cs_groups] (
    [title]         NVARCHAR (255)   NULL,
    [resolve_key]   NVARCHAR (255)   NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description]   NVARCHAR (255)   NULL,
    [date_created]  DATETIME         NULL,
    [author_name]   NVARCHAR (255)   NULL,
    [author_id]     UNIQUEIDENTIFIER NULL,
    [author_email]  NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_cs_groups] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_cs_groups_key]
    ON [dbo].[sf_cs_groups]([resolve_key] ASC);

