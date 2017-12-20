CREATE TABLE [dbo].[sf_list_items_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_lst_tms_sf_prms_D8AE2BE6] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_lst_tms_sf_prm_22020C74] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_lst_tms_sf_prm_D7B45207] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_sf_prmssions_id]
    ON [dbo].[sf_list_items_sf_permissions]([id] ASC);

