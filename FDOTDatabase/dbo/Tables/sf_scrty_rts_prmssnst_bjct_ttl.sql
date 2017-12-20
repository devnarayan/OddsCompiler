CREATE TABLE [dbo].[sf_scrty_rts_prmssnst_bjct_ttl] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_scrty_rts_prmss_0539814E] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_scrty_rts_prms_D96DAF71] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_security_roots] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_scrty_rts_prmssnst_bjct]
    ON [dbo].[sf_scrty_rts_prmssnst_bjct_ttl]([val] ASC);

