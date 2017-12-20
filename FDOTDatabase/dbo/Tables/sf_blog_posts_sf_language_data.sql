CREATE TABLE [dbo].[sf_blog_posts_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blg_psts_sf_lng_EB232A59] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_blg_psts_sf_ln_23023E19] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id]),
    CONSTRAINT [ref_sf_blg_psts_sf_ln_7BCC534D] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blog_posts] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blg_psts_sf_lngg_dta_id]
    ON [dbo].[sf_blog_posts_sf_language_data]([id] ASC);

