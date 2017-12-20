CREATE TABLE [dbo].[sf_page_node_references] (
    [page_node_id] UNIQUEIDENTIFIER NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [app_name]     VARCHAR (50)     NULL,
    CONSTRAINT [pk_sf_page_node_references] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [sf_idx_pn_split_id_app_name]
    ON [dbo].[sf_page_node_references]([id] ASC, [app_name] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_nd_rfrncs_pg_node_id]
    ON [dbo].[sf_page_node_references]([page_node_id] ASC);

