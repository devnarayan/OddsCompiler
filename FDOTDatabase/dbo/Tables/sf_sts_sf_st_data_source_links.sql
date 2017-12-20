CREATE TABLE [dbo].[sf_sts_sf_st_data_source_links] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_sts_sf_st_dt_sr_50593D9B] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_sts_sf_st_dt_s_5186CA5E] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_site_data_source_links] ([id]),
    CONSTRAINT [ref_sf_sts_sf_st_dt_s_EA6AAC25] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_sites] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_sts_sf_st_dt_src_lnks_d]
    ON [dbo].[sf_sts_sf_st_data_source_links]([id2] ASC);

