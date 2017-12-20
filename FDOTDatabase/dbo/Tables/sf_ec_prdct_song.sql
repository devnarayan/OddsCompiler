CREATE TABLE [dbo].[sf_ec_prdct_song] (
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [release_year] INT              NULL,
    [length]       NVARCHAR (255)   NULL,
    [artist]       NVARCHAR (255)   NULL,
    [album]        NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_song] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_sf_c_prdct_sng_sf_60B26BCA] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]) ON DELETE CASCADE
);

