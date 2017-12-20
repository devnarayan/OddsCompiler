CREATE TABLE [dbo].[sf_txnms_spprtd_prmission_sets] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_txnms_spprtd_pr_89E2DFDC] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_txnms_spprtd_p_E38DFA0F] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_taxonomies] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_txnms_spprtd_prmssn_sts]
    ON [dbo].[sf_txnms_spprtd_prmission_sets]([val] ASC);

