CREATE TABLE [dbo].[sf_version_trunks] (
    [nme]           VARCHAR (50)     NULL,
    [last_modified] DATETIME         NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description]   VARCHAR (255)    NULL,
    [app_name]      VARCHAR (50)     NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_version_trunks] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [sf_idx_vrsn_trnks_app_nme]
    ON [dbo].[sf_version_trunks]([app_name] ASC, [nme] ASC);

