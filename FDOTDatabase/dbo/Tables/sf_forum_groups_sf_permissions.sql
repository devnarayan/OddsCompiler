CREATE TABLE [dbo].[sf_forum_groups_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_frm_grps_sf_prm_3A6F3063] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_frm_grps_sf_pr_1257B58B] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_frm_grps_sf_pr_4F9A96B9] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_forum_groups] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_frm_grps_sf_prmssns_id2]
    ON [dbo].[sf_forum_groups_sf_permissions]([id2] ASC);

