CREATE TABLE [dbo].[sf_md_cntnt_pblshd_trnslations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_md_cntnt_pblshd_A71A6401] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_md_cntnt_pblsh_5088F2F2] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_media_content] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_md_cntnt_pblshd_trnsltn]
    ON [dbo].[sf_md_cntnt_pblshd_trnslations]([val] ASC);

