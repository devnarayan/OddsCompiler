CREATE TABLE [dbo].[sf_ec_product_department] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ec_product_department] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_dprtmn_B6654094] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prduct_department_val]
    ON [dbo].[sf_ec_product_department]([val] ASC);

