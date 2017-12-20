CREATE TABLE [dbo].[sf_notif_subscr_list] (
    [title]        NVARCHAR (255)   NULL,
    [resolve_key]  NVARCHAR (100)   NULL,
    [module_name]  VARCHAR (255)    NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [description]  NVARCHAR (255)   NULL,
    [account_name] VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_notif_subscr_list] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ns_slist_resolvekey]
    ON [dbo].[sf_notif_subscr_list]([resolve_key] ASC);

