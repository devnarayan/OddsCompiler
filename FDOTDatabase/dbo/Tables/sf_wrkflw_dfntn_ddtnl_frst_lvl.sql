CREATE TABLE [dbo].[sf_wrkflw_dfntn_ddtnl_frst_lvl] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_dd_436CF226] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_wrkflw_dfntn_d_6A239D1A] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_ddtnl_frst]
    ON [dbo].[sf_wrkflw_dfntn_ddtnl_frst_lvl]([val] ASC);

