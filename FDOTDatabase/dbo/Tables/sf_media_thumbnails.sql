CREATE TABLE [dbo].[sf_media_thumbnails] (
    [width]            INT              NULL,
    [typ]              INT              NOT NULL,
    [total_size]       BIGINT           NOT NULL,
    [content_id]       UNIQUEIDENTIFIER NULL,
    [nme]              NVARCHAR (10)    NULL,
    [mime_type]        VARCHAR (255)    NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [height]           INT              NULL,
    [file_id]          UNIQUEIDENTIFIER NULL,
    [dta]              IMAGE            NULL,
    [culture]          VARCHAR (255)    NULL,
    [uploaded]         TINYINT          NOT NULL,
    [number_of_chunks] INT              NOT NULL,
    [chunk_size]       INT              NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_media_thumbnails] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_thmbnails_content_id]
    ON [dbo].[sf_media_thumbnails]([content_id] ASC);

