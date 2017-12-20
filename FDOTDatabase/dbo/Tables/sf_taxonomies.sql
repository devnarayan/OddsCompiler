CREATE TABLE [dbo].[sf_taxonomies] (
    [title_]                  NVARCHAR (255)   NULL,
    [taxon_name_]             NVARCHAR (500)   NULL,
    [root_id]                 UNIQUEIDENTIFIER NULL,
    [ownr]                    UNIQUEIDENTIFIER NULL,
    [nme]                     VARCHAR (255)    NULL,
    [last_modified]           DATETIME         NULL,
    [inherits_permissions]    TINYINT          NOT NULL,
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [description_]            NVARCHAR (500)   NULL,
    [can_inherit_permissions] TINYINT          NOT NULL,
    [app_name]                VARCHAR (50)     NULL,
    [voa_class]               INT              NOT NULL,
    [voa_version]             SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_taxonomies] PRIMARY KEY CLUSTERED ([id] ASC)
);

