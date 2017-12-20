CREATE TABLE [dbo].[sf_dynamic_type_base] (
    [original_parent_id] UNIQUEIDENTIFIER NULL,
    [original_item_id]   UNIQUEIDENTIFIER NULL,
    [last_modified]      DATETIME         NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [application_name]   VARCHAR (255)    NULL,
    [voa_version]        SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_dynamic_type_base] PRIMARY KEY CLUSTERED ([id] ASC)
);

