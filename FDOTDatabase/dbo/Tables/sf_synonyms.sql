CREATE TABLE [dbo].[sf_synonyms] (
    [weight]        INT              NOT NULL,
    [val]           NVARCHAR (255)   NULL,
    [taxon_id]      UNIQUEIDENTIFIER NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [culture]       INT              NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_synonyms] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_synonyms_taxon_id]
    ON [dbo].[sf_synonyms]([taxon_id] ASC);

