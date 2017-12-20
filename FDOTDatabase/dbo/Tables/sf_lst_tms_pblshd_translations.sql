CREATE TABLE [dbo].[sf_lst_tms_pblshd_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_lst_tms_pblshd__72DA5D73] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_lst_tms_pblshd_985914FA] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_pblshd_trnsltns]
    ON [dbo].[sf_lst_tms_pblshd_translations]([val] ASC);

