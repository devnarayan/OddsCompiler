CREATE TABLE [dbo].[sf_vnts_published_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_vnts_pblshd_trn_4EB48CFB] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_vnts_pblshd_tr_6DA2DE64] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vnts_pblshd_trnsltns_vl]
    ON [dbo].[sf_vnts_published_translations]([val] ASC);

