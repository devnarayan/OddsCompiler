CREATE TABLE [dbo].[sf_form_description_category] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_ctg_CCEDA950] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_ct_11CBF836] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_dscrptn_ctegory_val]
    ON [dbo].[sf_form_description_category]([val] ASC);

