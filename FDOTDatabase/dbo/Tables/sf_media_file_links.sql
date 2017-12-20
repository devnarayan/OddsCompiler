CREATE TABLE [dbo].[sf_media_file_links] (
    [width]            INT              NULL,
    [total_size]       BIGINT           NULL,
    [number_of_chunks] INT              NULL,
    [mime_type]        VARCHAR (255)    NULL,
    [content_id]       UNIQUEIDENTIFIER NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [height]           INT              NULL,
    [file_path]        NVARCHAR (510)   NULL,
    [file_id]          UNIQUEIDENTIFIER NULL,
    [extension]        VARCHAR (255)    NULL,
    [default_url]      NVARCHAR (510)   NULL,
    [culture]          INT              NOT NULL,
    [chunk_size]       INT              NULL,
    [app_name]         VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_media_file_links] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_fle_links_content_id]
    ON [dbo].[sf_media_file_links]([content_id] ASC);

