CREATE TABLE [dbo].[sf_prs_crtr_grp_sf_prs_crtrion] (
    [sf_prs_criteria_group_id] INT NOT NULL,
    [seq]                      INT NOT NULL,
    [sf_prs_criterion_id]      INT NULL,
    CONSTRAINT [pk_sf_prs_crtr_grp_sf_CF27D9C4] PRIMARY KEY CLUSTERED ([sf_prs_criteria_group_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_prs_crtr_grp_s_3FD9548B] FOREIGN KEY ([sf_prs_criterion_id]) REFERENCES [dbo].[sf_prs_criterion] ([sf_prs_criterion_id]),
    CONSTRAINT [ref_sf_prs_crtr_grp_s_AA06D665] FOREIGN KEY ([sf_prs_criteria_group_id]) REFERENCES [dbo].[sf_prs_criteria_group] ([sf_prs_criteria_group_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_prs_crtr_grp_sf_prs_crt]
    ON [dbo].[sf_prs_crtr_grp_sf_prs_crtrion]([sf_prs_criterion_id] ASC);

