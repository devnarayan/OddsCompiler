CREATE TABLE [dbo].[sf_blog_posts_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_blg_psts_sf_prm_11B2B7BD] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_blg_psts_sf_pr_5EEBF1BB] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_blg_psts_sf_pr_A299AEB5] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_sf_prmssons_id]
    ON [dbo].[sf_blog_posts_sf_permissions]([id] ASC);

