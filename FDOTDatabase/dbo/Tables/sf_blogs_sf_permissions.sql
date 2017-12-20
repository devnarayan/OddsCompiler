CREATE TABLE [dbo].[sf_blogs_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_blogs_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_blgs_sf_prmssn_B9080DAB] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_blgs_sf_prmssn_BB3B2877] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_blogs] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_blogs_sf_permissions_id]
    ON [dbo].[sf_blogs_sf_permissions]([id] ASC);

