CREATE TABLE [dbo].[sf_scrty_rts_spprtd_prmssn_sts] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_scrty_rts_spprt_1F509842] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_scrty_rts_sppr_7424AADB] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_security_roots] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_scrty_rts_spprtd_prmssn]
    ON [dbo].[sf_scrty_rts_spprtd_prmssn_sts]([val] ASC);

