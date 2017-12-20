CREATE TABLE [dbo].[sf_frm_dscrptn_pblshd_trnsltns] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_pbl_EC8DDC75] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_pb_AF91AE04] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_pblshd_trns]
    ON [dbo].[sf_frm_dscrptn_pblshd_trnsltns]([val] ASC);

