CREATE TABLE [dbo].[sf_pblshng_mppng_sf_pp_mppng_t] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [id2] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_pblshng_mppng_s_9695ECE0] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_pblshng_mppng__423E25FB] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_publishing_mapping] ([id]),
    CONSTRAINT [ref_sf_pblshng_mppng__99FB3F80] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_pipe_mapping_translation] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pblshng_mppng_sf_pp_mpp]
    ON [dbo].[sf_pblshng_mppng_sf_pp_mppng_t]([id2] ASC);

