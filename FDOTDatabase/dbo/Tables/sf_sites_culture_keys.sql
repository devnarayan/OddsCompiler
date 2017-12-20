CREATE TABLE [dbo].[sf_sites_culture_keys] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_sites_culture_keys] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_sts_cltr_kys_s_821E5F65] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_sites] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_sites_culture_keys_val]
    ON [dbo].[sf_sites_culture_keys]([val] ASC);

