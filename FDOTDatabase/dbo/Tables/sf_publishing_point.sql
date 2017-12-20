CREATE TABLE [dbo].[sf_publishing_point] (
    [storage_type_name]              VARCHAR (255)    NULL,
    [storage_item_provider_name]     VARCHAR (255)    NULL,
    [id2]                            UNIQUEIDENTIFIER NULL,
    [pblshng_pnt_bsness_object_name] NVARCHAR (255)   NULL,
    [ownr]                           UNIQUEIDENTIFIER NULL,
    [nme]                            NVARCHAR (255)   NULL,
    [last_publication_date]          DATETIME         NULL,
    [last_modified]                  DATETIME         NULL,
    [is_template]                    TINYINT          NOT NULL,
    [is_shared_with_all_sites]       TINYINT          NOT NULL,
    [is_active]                      TINYINT          NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [description_]                   NVARCHAR (255)   NULL,
    [date_created]                   DATETIME         NULL,
    [application_name]               VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_publishing_point] PRIMARY KEY CLUSTERED ([id] ASC)
);

