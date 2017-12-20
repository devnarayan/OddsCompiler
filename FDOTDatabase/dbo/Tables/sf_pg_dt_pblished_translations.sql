CREATE TABLE [dbo].[sf_pg_dt_pblished_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pg_dt_pblshd_tr_0AFD0240] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pg_dt_pblshd_t_4AD938FD] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_page_data] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_dt_pblshd_trnsltns_v]
    ON [dbo].[sf_pg_dt_pblished_translations]([val] ASC);

