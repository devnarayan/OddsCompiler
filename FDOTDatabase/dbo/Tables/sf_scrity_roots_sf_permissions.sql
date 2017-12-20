CREATE TABLE [dbo].[sf_scrity_roots_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_scrty_rts_sf_pr_062DEA6B] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_scrty_rts_sf_p_6763D88D] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_scrty_rts_sf_p_85D52DD2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_security_roots] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_scrty_rts_sf_prmssns_d2]
    ON [dbo].[sf_scrity_roots_sf_permissions]([id2] ASC);

