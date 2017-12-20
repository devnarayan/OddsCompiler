CREATE TABLE [dbo].[sf_user_profile_link] (
    [user_profile_type_name] NVARCHAR (255)   NULL,
    [user_id]                UNIQUEIDENTIFIER NULL,
    [profile_id]             UNIQUEIDENTIFIER NULL,
    [membership]             UNIQUEIDENTIFIER NULL,
    [last_modified]          DATETIME         NOT NULL,
    [id]                     UNIQUEIDENTIFIER NOT NULL,
    [app_name]               NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_user_profile_link] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_profile_link_user_id]
    ON [dbo].[sf_user_profile_link]([user_id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UC_profile]
    ON [dbo].[sf_user_profile_link]([profile_id] ASC);

