CREATE TABLE [dbo].[sf_list_items_sf_commnt] (
    [content_id]  UNIQUEIDENTIFIER NOT NULL,
    [seq]         INT              NOT NULL,
    [content_id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_list_items_sf_commnt] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_lst_tms_sf_cmm_09D2A916] FOREIGN KEY ([content_id2]) REFERENCES [dbo].[sf_commnt] ([content_id]),
    CONSTRAINT [ref_sf_lst_tms_sf_cmm_B563FADD] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_sf_cmmnt_cntnt_]
    ON [dbo].[sf_list_items_sf_commnt]([content_id2] ASC);

