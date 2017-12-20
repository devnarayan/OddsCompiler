CREATE TABLE [dbo].[sf_pg_tmplts_pblshd_trnsltions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_tmplts_pblsh_269E8002] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pg_tmplts_pbls_88E7C526] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_pblshd_trnslt]
    ON [dbo].[sf_pg_tmplts_pblshd_trnsltions]([val] ASC);

