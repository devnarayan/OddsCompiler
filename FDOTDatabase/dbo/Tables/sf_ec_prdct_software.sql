CREATE TABLE [dbo].[sf_ec_prdct_software] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [release]  NVARCHAR (255)   NULL,
    [platform] NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_software] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_sf_c_prdct_sftwr__02DBF4EF] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]) ON DELETE CASCADE
);

