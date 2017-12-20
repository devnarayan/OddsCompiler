CREATE TABLE [dbo].[sf_ec_prdct_generalproduct] (
    [id] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_ec_prdct_generalproduct] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_sf_c_prdct_gnrlpr_1BF9D988] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]) ON DELETE CASCADE
);

