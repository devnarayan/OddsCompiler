CREATE TABLE [dbo].[sf_form_description_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf__DBABC077] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_DC8E209C] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_E34452C4] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_cmmnt_cn]
    ON [dbo].[sf_form_description_sf_commnt]([content_id2] ASC);

