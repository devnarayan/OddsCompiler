CREATE TABLE [dbo].[sf_ec_prices] (
    [val]              NUMERIC (20, 10) NOT NULL,
    [quantity]         BIGINT           NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_class]        INT              NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    [parent_id]        UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ec_prices] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pr_price_app_name_par]
    ON [dbo].[sf_ec_prices]([application_name] ASC, [parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pr_price_app_name]
    ON [dbo].[sf_ec_prices]([application_name] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ec_prices_parent_id]
    ON [dbo].[sf_ec_prices]([parent_id] ASC);

