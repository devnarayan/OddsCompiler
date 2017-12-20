CREATE TABLE [dbo].[sf_meta_index_composite_fields] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_mt_ndx_cmpst_fl_D7A2AAB2] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_mt_ndx_cmpst_f_55A5FF42] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_meta_index] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_mt_ndx_cmpst_fields_val]
    ON [dbo].[sf_meta_index_composite_fields]([val] ASC);

