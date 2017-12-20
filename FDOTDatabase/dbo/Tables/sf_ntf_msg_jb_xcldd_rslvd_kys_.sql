CREATE TABLE [dbo].[sf_ntf_msg_jb_xcldd_rslvd_kys_] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_ntf_msg_jb_xcld_6290C7BE] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_ntf_msg_jb_xcl_3D6E6593] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_notif_msg_job] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ntf_msg_jb_xcldd_rslvd_]
    ON [dbo].[sf_ntf_msg_jb_xcldd_rslvd_kys_]([val] ASC);

