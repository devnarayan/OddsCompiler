CREATE TABLE [dbo].[sf_frm_dscrptn_sf_prsnttn_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf__623C8D91] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_28F80C1E] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_presentation_data] ([id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_E5552520] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_prsnttn_]
    ON [dbo].[sf_frm_dscrptn_sf_prsnttn_data]([id] ASC);

