CREATE TABLE [dbo].[sf_pblshng_mppng_src_prprty_nm] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_s_9C1F42DB] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pblshng_mppng__D4283994] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_mapping] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_mppng_src_prprt]
    ON [dbo].[sf_pblshng_mppng_src_prprty_nm]([val] ASC);

