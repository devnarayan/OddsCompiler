CREATE TABLE [dbo].[sf_module_vrsn] (
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [module_name]      VARCHAR (255)    NULL,
    [version]          VARCHAR (255)    NULL,
    [previous_version] VARCHAR (255)    NULL,
    [error_msg]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_sf_module_vrsn] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_module_vrsn]
    ON [dbo].[sf_module_vrsn]([module_name] ASC);

