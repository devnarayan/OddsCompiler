CREATE TABLE [dbo].[sf_network_supertaxa] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_network_supertaxa] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_ntwrk_sprtx_sf_E526EF42] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_taxa] ([id]),
    CONSTRAINT [ref_sf_ntwrk_sprtx_sf_E526EF4F] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxa] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_network_supertaxa_id2]
    ON [dbo].[sf_network_supertaxa]([id2] ASC);

