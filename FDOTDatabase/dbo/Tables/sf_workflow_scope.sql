CREATE TABLE [dbo].[sf_workflow_scope] (
    [title]                     VARCHAR (255)    NULL,
    [provider_name]             VARCHAR (255)    NULL,
    [parent_id]                 UNIQUEIDENTIFIER NULL,
    [last_modified]             DATETIME         NOT NULL,
    [lnguage]                   VARCHAR (255)    NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [id2]                       UNIQUEIDENTIFIER NULL,
    [content_type]              VARCHAR (255)    NULL,
    [content_filter_expression] VARCHAR (255)    NULL,
    [app_name]                  VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_workflow_scope] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_workflow_scope_id2]
    ON [dbo].[sf_workflow_scope]([id2] ASC);

