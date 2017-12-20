CREATE TABLE [dbo].[sf_meta_fields] (
    [ui_hint]                  VARCHAR (255)    NULL,
    [storage_type]             INT              NOT NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [field_name]               VARCHAR (255)    NULL,
    [title_]                   VARCHAR (255)    NULL,
    [description_]             VARCHAR (255)    NULL,
    [clr_type]                 VARCHAR (255)    NULL,
    [db_type]                  VARCHAR (255)    NULL,
    [db_sql_type]              VARCHAR (255)    NULL,
    [db_length]                VARCHAR (255)    NULL,
    [column_name]              VARCHAR (255)    NULL,
    [db_scale]                 VARCHAR (255)    NULL,
    [default_fetch_group]      TINYINT          NOT NULL,
    [linked_content_provider]  VARCHAR (255)    NULL,
    [two_way_content_link]     TINYINT          NOT NULL,
    [taxonomy_provider]        VARCHAR (255)    NULL,
    [taxonomy_id]              UNIQUEIDENTIFIER NULL,
    [is_single_taxon]          TINYINT          NOT NULL,
    [validation]               VARCHAR (255)    NULL,
    [is_internal]              TINYINT          NOT NULL,
    [default_value_expression] VARCHAR (255)    NULL,
    [default_value]            VARCHAR (255)    NULL,
    [display_format]           VARCHAR (255)    NULL,
    [hidden]                   TINYINT          NOT NULL,
    [sitefinity_type]          VARCHAR (255)    NULL,
    [required]                 TINYINT          NOT NULL,
    [section_name]             VARCHAR (255)    NULL,
    [position_in_section]      INT              NOT NULL,
    [min_value]                VARCHAR (255)    NULL,
    [max_value]                VARCHAR (255)    NULL,
    [max_length]               INT              NOT NULL,
    [regular_expression]       VARCHAR (255)    NULL,
    [app_name]                 VARCHAR (255)    NULL,
    [is_dynamic]               TINYINT          NOT NULL,
    [is_deleted]               TINYINT          NOT NULL,
    [choice_field_definition]  NVARCHAR (MAX)   NULL,
    [allow_multiple_relations] TINYINT          NOT NULL,
    [is_protected_relation]    TINYINT          NOT NULL,
    [origin]                   VARCHAR (255)    NULL,
    [type_id]                  UNIQUEIDENTIFIER NULL,
    [id2]                      UNIQUEIDENTIFIER NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_meta_fields] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_metafields]
    ON [dbo].[sf_meta_fields]([app_name] ASC, [field_name] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_meta_fields_type_id]
    ON [dbo].[sf_meta_fields]([type_id] ASC);

