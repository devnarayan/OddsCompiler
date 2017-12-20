CREATE TABLE [dbo].[sf_user_link] (
    [user_id]         UNIQUEIDENTIFIER NULL,
    [role_id]         UNIQUEIDENTIFIER NULL,
    [membership_info] UNIQUEIDENTIFIER NULL,
    [last_modified]   DATETIME         NULL,
    [id]              UNIQUEIDENTIFIER NOT NULL,
    [app_name]        VARCHAR (255)    NULL,
    [voa_version]     SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_user_link] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_user_link]
    ON [dbo].[sf_user_link]([app_name] ASC, [user_id] ASC, [role_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_user_link_role_id]
    ON [dbo].[sf_user_link]([role_id] ASC);

