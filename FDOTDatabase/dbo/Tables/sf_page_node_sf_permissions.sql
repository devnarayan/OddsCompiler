CREATE TABLE [dbo].[sf_page_node_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_page_node_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_pg_nd_sf_prmss_8E9F3040] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_pg_nd_sf_prmss_9F0409E8] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_node] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_nd_sf_prmissions_id2]
    ON [dbo].[sf_page_node_sf_permissions]([id2] ASC);

