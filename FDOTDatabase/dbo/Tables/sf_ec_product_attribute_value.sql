CREATE TABLE [dbo].[sf_ec_product_attribute_value] (
    [title_]           NVARCHAR (255)   NULL,
    [attribute_id]     UNIQUEIDENTIFIER NULL,
    [ordinal]          REAL             NOT NULL,
    [nme]              NVARCHAR (255)   NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_active]        TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [description_]     NVARCHAR (MAX)   NULL,
    [date_created]     DATETIME         NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [title]            NVARCHAR (255)   NULL,
    [description]      NVARCHAR (255)   NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_c_prdct_ttrbt_v_8697EB86] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_prdct_ttrbt_vl_ttrbt_]
    ON [dbo].[sf_ec_product_attribute_value]([attribute_id] ASC);

