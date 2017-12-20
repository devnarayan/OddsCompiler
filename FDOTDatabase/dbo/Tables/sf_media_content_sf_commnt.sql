CREATE TABLE [dbo].[sf_media_content_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_media_content_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_md_cntnt_sf_cm_8531F6E7] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id]),
    CONSTRAINT [ref_sf_md_cntnt_sf_cm_9C7E1F5B] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntnt_sf_cmmnt_cntnt]
    ON [dbo].[sf_media_content_sf_commnt]([content_id2] ASC);

