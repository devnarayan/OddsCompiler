CREATE TABLE [dbo].[sf_mb_dynamic_module] (
    [url_name]                       VARCHAR (255)    NULL,
    [title]                          VARCHAR (255)    NULL,
    [status]                         INT              NOT NULL,
    [page_id]                        UNIQUEIDENTIFIER NULL,
    [ownr]                           UNIQUEIDENTIFIER NULL,
    [origin]                         VARCHAR (255)    NULL,
    [nme]                            VARCHAR (255)    NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [inherits_permissions]           TINYINT          NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [description]                    NVARCHAR (MAX)   NULL,
    [dfault_backend_definition_name] VARCHAR (255)    NULL,
    [can_inherit_permissions]        TINYINT          NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_mb_dynamic_module] PRIMARY KEY CLUSTERED ([id] ASC)
);

