CREATE TABLE [dbo].[sf_wrkflw_dfntn_spprtd_prmssn_] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_dfntn_sp_60BE280B] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_wrkflw_dfntn_s_94308028] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_definition] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_dfntn_spprtd_prm]
    ON [dbo].[sf_wrkflw_dfntn_spprtd_prmssn_]([val] ASC);

