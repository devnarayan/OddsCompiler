CREATE TABLE [dbo].[sf_ec_product_tags] (
    [id]  UNIQUEIDENTIFIER NOT NULL,
    [seq] INT              NOT NULL,
    [val] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ec_product_tags] PRIMARY KEY CLUSTERED ([id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_c_prdct_tgs_sf_7D33BDB8] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ec_product_tags_val]
    ON [dbo].[sf_ec_product_tags]([val] ASC);

