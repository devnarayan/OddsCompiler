CREATE TABLE [dbo].[sf_forums_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_forums_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_frms_sf_prmssn_19E1A110] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_forums] ([id]),
    CONSTRAINT [ref_sf_frms_sf_prmssn_E3E05598] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frms_sf_permissions_id2]
    ON [dbo].[sf_forums_sf_permissions]([id2] ASC);

