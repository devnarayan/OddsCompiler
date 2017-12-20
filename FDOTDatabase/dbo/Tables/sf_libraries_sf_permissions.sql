CREATE TABLE [dbo].[sf_libraries_sf_permissions] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_libraries_sf_permissions] PRIMARY KEY CLUSTERED ([content_id] ASC, [id] ASC),
    CONSTRAINT [ref_sf_lbrrs_sf_prmss_738E3946] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_libraries] ([content_id]),
    CONSTRAINT [ref_sf_lbrrs_sf_prmss_B00F476C] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lbrrs_sf_permissions_id]
    ON [dbo].[sf_libraries_sf_permissions]([id] ASC);

