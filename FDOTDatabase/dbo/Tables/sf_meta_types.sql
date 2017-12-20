CREATE TABLE [dbo].[sf_meta_types] (
    [database_inheritance]           INT              NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [name_space]                     VARCHAR (255)    NULL,
    [class_name]                     VARCHAR (255)    NULL,
    [app_name]                       VARCHAR (255)    NULL,
    [section_captions_resource_type] VARCHAR (255)    NULL,
    [is_dynamic]                     TINYINT          NOT NULL,
    [is_deleted]                     TINYINT          NOT NULL,
    [parent_type_id]                 UNIQUEIDENTIFIER NULL,
    [base_class_name]                VARCHAR (255)    NULL,
    [assembly_name]                  VARCHAR (255)    NULL,
    [module_name]                    VARCHAR (255)    NULL,
    [last_modified]                  DATETIME         NULL,
    [origin]                         VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_meta_types] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_meta_types]
    ON [dbo].[sf_meta_types]([app_name] ASC, [class_name] ASC, [name_space] ASC);

