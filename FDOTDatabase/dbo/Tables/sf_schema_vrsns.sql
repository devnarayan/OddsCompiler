CREATE TABLE [dbo].[sf_schema_vrsns] (
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [app_name]                VARCHAR (255)    NULL,
    [module_name]             VARCHAR (255)    NOT NULL,
    [connection_id]           VARCHAR (255)    NOT NULL,
    [connection_hash]         VARCHAR (255)    NULL,
    [assembly]                VARCHAR (255)    NULL,
    [cultures]                VARCHAR (2000)   NULL,
    [version_number]          INT              NOT NULL,
    [previous_version_number] INT              NOT NULL,
    [meta_data_changed]       TINYINT          NOT NULL,
    [last_upgrade_date]       DATETIME         NOT NULL,
    CONSTRAINT [pk_sf_schema_vrsns] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_schema_vrsns]
    ON [dbo].[sf_schema_vrsns]([app_name] ASC, [module_name] ASC, [connection_id] ASC);

