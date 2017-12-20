CREATE TABLE [dbo].[sf_sites_domain_aliases] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_sites_domain_aliases] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_sts_dmn_lss_sf_D75D2B5C] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_sites] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_stes_domain_aliases_val]
    ON [dbo].[sf_sites_domain_aliases]([val] ASC);

