CREATE TABLE [dbo].[sf_sitefinity_profile] (
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [preferred_language] NVARCHAR (255)   NULL,
    [nickname]           NVARCHAR (64)    NULL,
    [last_name]          NVARCHAR (255)   NULL,
    [first_name]         NVARCHAR (255)   NULL,
    [about]              NVARCHAR (MAX)   NULL,
    [posts_count]        INT              NULL,
    [is_profile_public]  BIT              NULL,
    CONSTRAINT [pk_sf_sitefinity_profile] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_sf_stfnty_prfl_sf_125BEED3] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_user_profile] ([id]) ON DELETE CASCADE
);

