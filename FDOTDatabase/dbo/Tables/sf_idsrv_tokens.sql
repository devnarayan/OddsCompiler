CREATE TABLE [dbo].[sf_idsrv_tokens] (
    [token_type]    INT              NOT NULL,
    [token_key]     VARCHAR (255)    NOT NULL,
    [last_modified] DATETIME         NOT NULL,
    [idsrv_key]     UNIQUEIDENTIFIER NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [expire_date]   DATETIME         NOT NULL,
    [data]          NVARCHAR (MAX)   NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_idsrv_tokens] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_idsrv_tokens_idsrv_key]
    ON [dbo].[sf_idsrv_tokens]([idsrv_key] ASC);

