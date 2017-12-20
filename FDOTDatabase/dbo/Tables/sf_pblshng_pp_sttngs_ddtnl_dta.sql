CREATE TABLE [dbo].[sf_pblshng_pp_sttngs_ddtnl_dta] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    VARCHAR (1000)   NULL,
    CONSTRAINT [pk_sf_pblshng_pp_sttn_2ED0E784] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_pblshng_pp_stt_8A8AB5D0] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_pipe_settings] ([id])
);

