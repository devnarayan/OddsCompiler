CREATE TABLE [dbo].[sf_media_file_urls] (
    [url]                 NVARCHAR (510)   NULL,
    [redirect_to_default] TINYINT          NOT NULL,
    [media_file_link_id]  UNIQUEIDENTIFIER NULL,
    [is_default]          TINYINT          NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [app_name]            VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_media_file_urls] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [sf_idx_mfu_url_mfl]
    ON [dbo].[sf_media_file_urls]([url] ASC, [media_file_link_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_fl_rls_md_fl_link_id]
    ON [dbo].[sf_media_file_urls]([media_file_link_id] ASC);

