CREATE TABLE [dbo].[sf_ntf_sbscrbrs_cstm_prperties] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ntf_sbscrbrs_cs_1708B61C] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_ntf_sbscrbrs_c_66278547] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_notif_subscribers] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ntf_sbscrbrs_cstm_prprt]
    ON [dbo].[sf_ntf_sbscrbrs_cstm_prperties]([val] ASC);

