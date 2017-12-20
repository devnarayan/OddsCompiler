CREATE TABLE [dbo].[sf_schema_vrsns_meta_types] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_schema_vrsns_meta_types] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_schm_vrsns_mt__BF84E03B] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_schema_vrsns] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_schm_vrsns_mt_types_val]
    ON [dbo].[sf_schema_vrsns_meta_types]([val] ASC);

