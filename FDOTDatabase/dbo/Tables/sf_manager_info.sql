CREATE TABLE [dbo].[sf_manager_info] (
    [provider_name] VARCHAR (255)    NULL,
    [manager_type]  VARCHAR (255)    NULL,
    [last_modified] DATETIME         NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_manager_info] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_mngr_info]
    ON [dbo].[sf_manager_info]([app_name] ASC, [manager_type] ASC, [provider_name] ASC);

