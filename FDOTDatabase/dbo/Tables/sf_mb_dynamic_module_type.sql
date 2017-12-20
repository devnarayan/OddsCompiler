CREATE TABLE [dbo].[sf_mb_dynamic_module_type] (
    [type_namespace]             VARCHAR (255)    NULL,
    [type_name]                  VARCHAR (255)    NULL,
    [parentTypeId]               UNIQUEIDENTIFIER NULL,
    [parent_module_id]           UNIQUEIDENTIFIER NULL,
    [pageId]                     UNIQUEIDENTIFIER NULL,
    [origin]                     VARCHAR (255)    NULL,
    [module_name]                VARCHAR (255)    NULL,
    [main_short_text_field_name] VARCHAR (255)    NULL,
    [last_modified]              DATETIME         NOT NULL,
    [is_slf_referencing]         TINYINT          NOT NULL,
    [inherits_permissions]       TINYINT          NOT NULL,
    [id]                         UNIQUEIDENTIFIER NOT NULL,
    [display_name]               VARCHAR (255)    NULL,
    [check_field_permissions]    TINYINT          NOT NULL,
    [can_inherit_permissions]    TINYINT          NOT NULL,
    [application_name]           VARCHAR (255)    NULL,
    [voa_version]                SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_mb_dynamic_module_type] PRIMARY KEY CLUSTERED ([id] ASC)
);

