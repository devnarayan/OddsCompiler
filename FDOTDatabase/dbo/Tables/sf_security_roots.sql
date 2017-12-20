CREATE TABLE [dbo].[sf_security_roots] (
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [ky]                      VARCHAR (255)    NULL,
    [app_name]                VARCHAR (50)     NULL,
    [last_modified]           DATETIME         NULL,
    [can_inherit_permissions] TINYINT          NOT NULL,
    CONSTRAINT [pk_sf_security_roots] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_security_roots]
    ON [dbo].[sf_security_roots]([ky] ASC, [app_name] ASC);

