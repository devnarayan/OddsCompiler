CREATE TABLE [dbo].[sf_ec_prdct_book] (
    [id]              UNIQUEIDENTIFIER NOT NULL,
    [release_date]    DATETIME         NULL,
    [Publisher]       NVARCHAR (255)   NULL,
    [number_of_pages] INT              NULL,
    [i_s_b_n]         NVARCHAR (255)   NULL,
    [author]          NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_ec_prdct_book] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [ref_sf_c_prdct_bk_sf__4ADEB946] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_ec_product] ([id]) ON DELETE CASCADE
);

