CREATE TABLE [dbo].[sf_pckgng_addns] (
    [version]     VARCHAR (255)    NULL,
    [name]        VARCHAR (255)    NULL,
    [addn_id]     UNIQUEIDENTIFIER NOT NULL,
    [description] VARCHAR (MAX)    NULL,
    [author]      VARCHAR (255)    NULL,
    [addn_key]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_pckgng_addns] PRIMARY KEY CLUSTERED ([addn_id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_name]
    ON [dbo].[sf_pckgng_addns]([name] ASC);

