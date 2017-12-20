CREATE TABLE [dbo].[sf_pckgng_pckgs] (
    [version]       UNIQUEIDENTIFIER NOT NULL,
    [owner]         UNIQUEIDENTIFIER NULL,
    [name]          VARCHAR (255)    NULL,
    [last_modified] DATETIME         NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [hash]          VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pckgng_pckgs] PRIMARY KEY CLUSTERED ([id] ASC)
);

