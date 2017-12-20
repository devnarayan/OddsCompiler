CREATE TABLE [dbo].[sf_forum_groups] (
    [url_name_]               NVARCHAR (255)   NULL,
    [title]                   NVARCHAR (255)   NULL,
    [ordinal]                 REAL             NOT NULL,
    [last_modified]           DATETIME         NOT NULL,
    [item_default_url_]       NVARCHAR (255)   NULL,
    [is_locked]               TINYINT          NOT NULL,
    [is_default]              TINYINT          NOT NULL,
    [inherits_permissions]    TINYINT          NOT NULL,
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [description]             NVARCHAR (255)   NULL,
    [can_inherit_permissions] TINYINT          NOT NULL,
    [app_name]                VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_forum_groups] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_forum_groups]
    ON [dbo].[sf_forum_groups]([app_name] ASC);

