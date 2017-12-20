CREATE TABLE [dbo].[sf_cntnt_tems_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_cntnt_tms_sf_ln_1E6CD43A] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_cntnt_tms_sf_l_468FB44F] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_content_items] ([content_id]),
    CONSTRAINT [ref_sf_cntnt_tms_sf_l_D3A810FF] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_tms_sf_lngg_dt_id]
    ON [dbo].[sf_cntnt_tems_sf_language_data]([id] ASC);

