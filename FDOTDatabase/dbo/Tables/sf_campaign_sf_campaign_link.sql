CREATE TABLE [dbo].[sf_campaign_sf_campaign_link] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_cmpgn_sf_cmpgn__345E94F9] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_cmpgn_sf_cmpgn_3D3571B2] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_campaign] ([id]),
    CONSTRAINT [ref_sf_cmpgn_sf_cmpgn_9A451AA2] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_campaign_link] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cmpgn_sf_cmpgn_link_id2]
    ON [dbo].[sf_campaign_sf_campaign_link]([id2] ASC);

