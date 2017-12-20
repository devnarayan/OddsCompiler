CREATE TABLE [dbo].[sf_lists_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_lists_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_lsts_sf_prmssn_B3B364C2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_lsts_sf_prmssn_DA6BC1EA] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_lists] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lists_sf_permissions_id]
    ON [dbo].[sf_lists_sf_permissions]([id] ASC);

