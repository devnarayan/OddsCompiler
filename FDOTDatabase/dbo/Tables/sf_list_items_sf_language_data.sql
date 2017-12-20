CREATE TABLE [dbo].[sf_list_items_sf_language_data] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_lst_tms_sf_lngg_4BD5B8B5] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_lst_tms_sf_lng_3054E1ED] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_list_items] ([content_id]),
    CONSTRAINT [ref_sf_lst_tms_sf_lng_663F5578] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_language_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_tms_sf_lngg_data_id]
    ON [dbo].[sf_list_items_sf_language_data]([id] ASC);

