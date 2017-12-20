CREATE TABLE [dbo].[sf_dashboard_log] (
    [user_id]       UNIQUEIDENTIFIER NULL,
    [item_title]    NVARCHAR (255)   NULL,
    [timestamp]     DATETIME         NOT NULL,
    [status]        VARCHAR (255)    NULL,
    [site_id]       UNIQUEIDENTIFIER NULL,
    [language]      VARCHAR (255)    NULL,
    [item_type]     VARCHAR (255)    NULL,
    [item_provider] VARCHAR (255)    NULL,
    [item_id]       VARCHAR (255)    NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_dashboard_log] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dashboard_log_time]
    ON [dbo].[sf_dashboard_log]([timestamp] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dashboard_log_id_type]
    ON [dbo].[sf_dashboard_log]([item_id] ASC, [item_type] ASC);

