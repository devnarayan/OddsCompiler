CREATE TABLE [dbo].[sf_vesion_items] (
    [type_name]     VARCHAR (255)    NULL,
    [trunk_id]      UNIQUEIDENTIFIER NULL,
    [last_version]  INT              NOT NULL,
    [id2]           UNIQUEIDENTIFIER NULL,
    [last_modified] DATETIME         NOT NULL,
    [synced]        TINYINT          NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [app_name]      VARCHAR (50)     NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_vesion_items] PRIMARY KEY CLUSTERED ([id] ASC)
);

