CREATE TABLE [dbo].[sf_blogs_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_blogs_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_blgs_sf_cmmnt__60EBEB17] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_blgs_sf_cmmnt__E1B764AE] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blogs] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blgs_sf_cmmnt_cntnt_id2]
    ON [dbo].[sf_blogs_sf_commnt]([content_id2] ASC);

