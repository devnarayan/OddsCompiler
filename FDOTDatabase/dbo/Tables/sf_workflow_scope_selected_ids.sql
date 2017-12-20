CREATE TABLE [dbo].[sf_workflow_scope_selected_ids] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_wrkflw_scp_slct_429D78D1] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_wrkflw_scp_slc_64A1ED6C] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_workflow_scope] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_wrkflw_scp_slctd_ds_val]
    ON [dbo].[sf_workflow_scope_selected_ids]([val] ASC);

