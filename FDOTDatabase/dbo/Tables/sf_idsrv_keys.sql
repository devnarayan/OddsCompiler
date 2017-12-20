CREATE TABLE [dbo].[sf_idsrv_keys] (
    [subject_id]    VARCHAR (255)    NOT NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [client_id]     VARCHAR (255)    NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_idsrv_keys] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [sf_idsrv_keys_sbj]
    ON [dbo].[sf_idsrv_keys]([subject_id] ASC);

