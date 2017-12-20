CREATE TABLE [dbo].[sf_wrkflw_dfntn_prmssnst_bjct_] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_pr_BAA68923] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_wrkflw_dfntn_p_C1FA88E1] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_prmssnst_b]
    ON [dbo].[sf_wrkflw_dfntn_prmssnst_bjct_]([val] ASC);

