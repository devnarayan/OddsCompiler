CREATE TABLE [dbo].[sf_c_prdct_ttrbt_pblshd_trnslt] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_p_F08EC6A1] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__16242477] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product_attribute] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_pblshd_tr]
    ON [dbo].[sf_c_prdct_ttrbt_pblshd_trnslt]([val] ASC);

