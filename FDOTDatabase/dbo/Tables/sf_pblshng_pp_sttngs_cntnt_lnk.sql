CREATE TABLE [dbo].[sf_pblshng_pp_sttngs_cntnt_lnk] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_pp_sttn_D50A08BB] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pblshng_pp_stt_A5119550] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_pipe_settings] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_pp_sttngs_cntnt]
    ON [dbo].[sf_pblshng_pp_sttngs_cntnt_lnk]([val] ASC);

