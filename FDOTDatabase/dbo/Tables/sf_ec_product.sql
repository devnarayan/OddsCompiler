CREATE TABLE [dbo].[sf_ec_product] (
    [weight]                    FLOAT (53)       NULL,
    [visible]                   TINYINT          NOT NULL,
    [url_name_]                 NVARCHAR (255)   NULL,
    [track_inventory]           INT              NOT NULL,
    [title_]                    NVARCHAR (255)   NULL,
    [tax_class_id]              UNIQUEIDENTIFIER NULL,
    [status]                    INT              NOT NULL,
    [sku]                       NVARCHAR (255)   NULL,
    [sale_start_date]           DATETIME         NULL,
    [sale_price]                NUMERIC (20, 10) NULL,
    [sale_end_date]             DATETIME         NULL,
    [publication_date]          DATETIME         NULL,
    [price]                     NUMERIC (20, 10) NOT NULL,
    [ownr]                      UNIQUEIDENTIFIER NULL,
    [out_of_stock_option]       INT              NOT NULL,
    [original_owner]            UNIQUEIDENTIFIER NULL,
    [original_content_id]       UNIQUEIDENTIFIER NULL,
    [last_modified_by]          UNIQUEIDENTIFIER NULL,
    [last_modified]             DATETIME         NOT NULL,
    [is_vat_taxable]            TINYINT          NOT NULL,
    [is_u_s_canada_taxable]     TINYINT          NOT NULL,
    [is_shippable]              TINYINT          NOT NULL,
    [is_active]                 TINYINT          NOT NULL,
    [inventory]                 INT              NOT NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]           DATETIME         NULL,
    [description_]              NVARCHAR (MAX)   NULL,
    [date_created]              DATETIME         NULL,
    [content_state]             VARCHAR (255)    NULL,
    [clr_type]                  VARCHAR (255)    NULL,
    [associate_buyer_with_role] UNIQUEIDENTIFIER NULL,
    [approval_workflow_state_]  NVARCHAR (255)   NULL,
    [application_name]          VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    [voa_class]                 INT              NOT NULL,
    CONSTRAINT [pk_sf_ec_product] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_products_org_cnt_id]
    ON [dbo].[sf_ec_product]([original_content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_products_clr_type]
    ON [dbo].[sf_ec_product]([application_name] ASC, [clr_type] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_products_app_name]
    ON [dbo].[sf_ec_product]([application_name] ASC);

