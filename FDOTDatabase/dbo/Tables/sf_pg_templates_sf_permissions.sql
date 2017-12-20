CREATE TABLE [dbo].[sf_pg_templates_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_pg_tmplts_sf_pr_82317AA0] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_pg_tmplts_sf_p_1B1C7023] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_page_templates] ([id]),
    CONSTRAINT [ref_sf_pg_tmplts_sf_p_95566D85] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pg_tmplts_sf_prmssns_d2]
    ON [dbo].[sf_pg_templates_sf_permissions]([id2] ASC);

