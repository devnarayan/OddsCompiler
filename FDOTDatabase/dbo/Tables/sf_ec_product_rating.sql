CREATE TABLE [dbo].[sf_ec_product_rating] (
    [value]            NUMERIC (20, 10) NULL,
    [parent_id]        UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [language]         NVARCHAR (10)    NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_product_rating] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_rting_parent_id]
    ON [dbo].[sf_ec_product_rating]([parent_id] ASC);

