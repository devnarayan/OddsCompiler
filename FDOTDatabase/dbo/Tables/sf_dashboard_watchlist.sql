CREATE TABLE [dbo].[sf_dashboard_watchlist] (
    [user_id]                UNIQUEIDENTIFIER NULL,
    [id]                     UNIQUEIDENTIFIER NOT NULL,
    [dashboard_log_entry_id] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_dashboard_watchlist] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dshbrd_watch_entry_usr]
    ON [dbo].[sf_dashboard_watchlist]([dashboard_log_entry_id] ASC, [user_id] ASC);

