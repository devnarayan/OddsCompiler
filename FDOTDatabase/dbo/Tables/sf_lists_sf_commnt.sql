CREATE TABLE [dbo].[sf_lists_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_lists_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_lsts_sf_cmmnt__5E006C86] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_lsts_sf_cmmnt__987A7B9C] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_lists] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lsts_sf_cmmnt_cntnt_id2]
    ON [dbo].[sf_lists_sf_commnt]([content_id2] ASC);

