CREATE TABLE [dbo].[sf_wrkflw_dfntn_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_sf_68418B3E] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_wrkflw_dfntn_s_3932810D] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id]),
    CONSTRAINT [ref_sf_wrkflw_dfntn_s_9E8530D8] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_sf_prmssns]
    ON [dbo].[sf_wrkflw_dfntn_sf_permissions]([id2] ASC);

