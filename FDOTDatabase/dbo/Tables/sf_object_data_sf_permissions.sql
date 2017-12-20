CREATE TABLE [dbo].[sf_object_data_sf_permissions] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [id2] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_bjct_dt_sf_prms_20DDAA71] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC),
    CONSTRAINT [ref_sf_bjct_dt_sf_prm_E825EAAE] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_permissions] ([id]),
    CONSTRAINT [ref_sf_bjct_dt_sf_prm_F52EE9B1] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_object_data] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_bjct_dt_sf_prmssons_id2]
    ON [dbo].[sf_object_data_sf_permissions]([id2] ASC);

