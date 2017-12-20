CREATE TABLE [dbo].[sf_facet_facets] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_facet_facets] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_facet_facets_sf_taxa] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxa] ([id]),
    CONSTRAINT [ref_sf_fct_fcts_sf_tx_A3F38EB4] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_taxonomies] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_facet_facets_id2]
    ON [dbo].[sf_facet_facets]([id2] ASC);

