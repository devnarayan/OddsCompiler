CREATE TABLE [dbo].[sf_cntnt_tms_pblshd_trnsltions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_cntnt_tms_pblsh_1C0E917D] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_cntnt_tms_pbls_64AAB6C3] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_pblshd_trnslt]
    ON [dbo].[sf_cntnt_tms_pblshd_trnsltions]([val] ASC);

