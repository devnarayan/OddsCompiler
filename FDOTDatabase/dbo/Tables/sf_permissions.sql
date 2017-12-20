CREATE TABLE [dbo].[sf_permissions] (
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [set_name]      VARCHAR (250)    NOT NULL,
    [object_id]     UNIQUEIDENTIFIER NOT NULL,
    [principal_id]  UNIQUEIDENTIFIER NOT NULL,
    [grnt]          INT              NOT NULL,
    [deny]          INT              NOT NULL,
    [app_name]      VARCHAR (50)     NOT NULL,
    [last_modified] DATETIME         NOT NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_permissions] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_permission_setname]
    ON [dbo].[sf_permissions]([set_name] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_permissions]
    ON [dbo].[sf_permissions]([object_id] ASC, [principal_id] ASC, [app_name] ASC, [set_name] ASC);

