CREATE TABLE [dbo].[sf_idsrv_claims] (
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [email]         VARCHAR (255)    NOT NULL,
    [data]          NVARCHAR (MAX)   NOT NULL,
    [app_name]      VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_idsrv_claims] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [sf_idsrv_claims_email]
    ON [dbo].[sf_idsrv_claims]([email] ASC);

