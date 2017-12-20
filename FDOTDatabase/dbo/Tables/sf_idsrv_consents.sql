CREATE TABLE [dbo].[sf_idsrv_consents] (
    [scopes]        VARCHAR (255)    NOT NULL,
    [last_modified] DATETIME         NOT NULL,
    [idsrv_key]     UNIQUEIDENTIFIER NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_idsrv_consents] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dsrv_consents_idsrv_key]
    ON [dbo].[sf_idsrv_consents]([idsrv_key] ASC);

