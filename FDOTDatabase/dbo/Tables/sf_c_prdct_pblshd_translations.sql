CREATE TABLE [dbo].[sf_c_prdct_pblshd_translations] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_c_prdct_pblshd__0E87C97F] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_pblshd_7B93AA8E] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_pblshd_trnsltns]
    ON [dbo].[sf_c_prdct_pblshd_translations]([val] ASC);

