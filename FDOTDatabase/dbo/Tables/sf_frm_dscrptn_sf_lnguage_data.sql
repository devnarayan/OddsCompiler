CREATE TABLE [dbo].[sf_frm_dscrptn_sf_lnguage_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_sf__C7B8CF01] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_929C00E9] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id]),
    CONSTRAINT [ref_sf_frm_dscrptn_sf_A3601094] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_sf_lngg_dt_]
    ON [dbo].[sf_frm_dscrptn_sf_lnguage_data]([id] ASC);

