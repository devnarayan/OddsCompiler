CREATE TABLE [dbo].[sf_wrkflw_dfntn_ddtnl_scnd_lvl] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_dd_6936DCD4] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_wrkflw_dfntn_d_FA8BA617] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_ddtnl_scnd]
    ON [dbo].[sf_wrkflw_dfntn_ddtnl_scnd_lvl]([val] ASC);

