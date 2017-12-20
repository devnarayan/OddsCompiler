CREATE TABLE [dbo].[sf_taxa_attrbutes] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    NVARCHAR (1000)  NULL,
    CONSTRAINT [pk_sf_taxa_attrbutes] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_taxa_attrbutes_sf_taxa] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxa] ([id])
);

