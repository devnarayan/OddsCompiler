CREATE TABLE [dbo].[sf_workflow_permission] (
    [principal_type] INT              NOT NULL,
    [principal_name] VARCHAR (255)    NULL,
    [principal_id]   VARCHAR (255)    NULL,
    [last_modified]  DATETIME         NOT NULL,
    [id]             UNIQUEIDENTIFIER NOT NULL,
    [id2]            UNIQUEIDENTIFIER NULL,
    [app_name]       VARCHAR (255)    NULL,
    [action_name]    VARCHAR (255)    NULL,
    [voa_version]    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_workflow_permission] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_workflow_permission_id2]
    ON [dbo].[sf_workflow_permission]([id2] ASC);

