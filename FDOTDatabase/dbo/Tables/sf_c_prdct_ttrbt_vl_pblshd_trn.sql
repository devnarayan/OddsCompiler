CREATE TABLE [dbo].[sf_c_prdct_ttrbt_vl_pblshd_trn] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_v_527C7199] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_ttrbt__0271292D] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product_attribute_value] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_vl_pblshd]
    ON [dbo].[sf_c_prdct_ttrbt_vl_pblshd_trn]([val] ASC);

