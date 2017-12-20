CREATE TABLE [dbo].[sf_notif_subscribers] (
    [resolve_key]  NVARCHAR (100)   NULL,
    [module_name]  VARCHAR (255)    NULL,
    [last_name]    NVARCHAR (255)   NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [first_name]   NVARCHAR (255)   NULL,
    [email]        VARCHAR (255)    NULL,
    [disabled]     TINYINT          NOT NULL,
    [account_name] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_notif_subscribers] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ns_sr_resolvekey]
    ON [dbo].[sf_notif_subscribers]([resolve_key] ASC);

