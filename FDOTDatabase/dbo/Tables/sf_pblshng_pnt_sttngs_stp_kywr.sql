CREATE TABLE [dbo].[sf_pblshng_pnt_sttngs_stp_kywr] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pblshng_pnt_stt_30B70C68] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pblshng_pnt_st_350BD42A] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_point_settings] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_pnt_sttngs_stp_]
    ON [dbo].[sf_pblshng_pnt_sttngs_stp_kywr]([val] ASC);

