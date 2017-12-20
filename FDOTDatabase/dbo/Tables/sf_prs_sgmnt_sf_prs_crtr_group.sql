CREATE TABLE [dbo].[sf_prs_sgmnt_sf_prs_crtr_group] (
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [seq]                      INT              NOT NULL,
    [sf_prs_criteria_group_id] INT              NULL,
    CONSTRAINT [pk_sf_prs_sgmnt_sf_pr_5C3F8446] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_prs_sgmnt_sf_p_8B779700] FOREIGN KEY ([sf_prs_criteria_group_id]) REFERENCES [dbo].[sf_prs_criteria_group] ([sf_prs_criteria_group_id]),
    CONSTRAINT [ref_sf_prs_sgmnt_sf_p_DCC8A1FE] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_prs_segment] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_prs_sgmnt_sf_prs_crtr_g]
    ON [dbo].[sf_prs_sgmnt_sf_prs_crtr_group]([sf_prs_criteria_group_id] ASC);

