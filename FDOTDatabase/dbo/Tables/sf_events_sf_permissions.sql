CREATE TABLE [dbo].[sf_events_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_events_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_vnts_sf_prmssn_411088A3] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_events] ([content_id]),
    CONSTRAINT [ref_sf_vnts_sf_prmssn_F6B61EA8] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_vents_sf_permissions_id]
    ON [dbo].[sf_events_sf_permissions]([id] ASC);

