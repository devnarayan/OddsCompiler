CREATE TABLE [dbo].[sf_pblshng_mppng_sttngs_sf_pbl] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_s_F2A620C4] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pblshng_mppng__A0EF7CD1] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_mapping_settings] ([id]),
    CONSTRAINT [ref_sf_pblshng_mppng__B02ED89D] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_publishing_mapping] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_mppng_sttngs_sf]
    ON [dbo].[sf_pblshng_mppng_sttngs_sf_pbl]([id2] ASC);

