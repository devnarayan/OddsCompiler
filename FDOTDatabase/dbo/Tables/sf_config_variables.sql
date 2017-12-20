CREATE TABLE [dbo].[sf_config_variables] (
    [val]      NVARCHAR (255)   NULL,
    [key]      VARCHAR (255)    NOT NULL,
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [app_name] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_config_variables] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_config_variables]
    ON [dbo].[sf_config_variables]([app_name] ASC, [key] ASC);

