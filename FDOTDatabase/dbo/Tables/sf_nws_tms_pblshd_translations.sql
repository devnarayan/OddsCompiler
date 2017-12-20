CREATE TABLE [dbo].[sf_nws_tms_pblshd_translations] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_nws_tms_pblshd__4B060187] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_nws_tms_pblshd_D2645765] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_news_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_nws_tms_pblshd_trnsltns]
    ON [dbo].[sf_nws_tms_pblshd_translations]([val] ASC);

