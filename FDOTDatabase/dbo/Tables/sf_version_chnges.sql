CREATE TABLE [dbo].[sf_version_chnges] (
    [vrsion]               INT              NOT NULL,
    [serial_info_id]       UNIQUEIDENTIFIER NULL,
    [item_id]              UNIQUEIDENTIFIER NULL,
    [ownr]                 UNIQUEIDENTIFIER NULL,
    [metadata]             VARCHAR (4000)   NULL,
    [last_modified]        DATETIME         NULL,
    [lbel]                 VARCHAR (50)     NULL,
    [is_published_version] TINYINT          NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [dta]                  VARBINARY (MAX)  NULL,
    [culture]              INT              NOT NULL,
    [commnt]               NVARCHAR (255)   NULL,
    [change_type]          VARCHAR (50)     NULL,
    [app_name]             VARCHAR (50)     NULL,
    [voa_version]          SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_version_chnges] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_version_chnges_item_id]
    ON [dbo].[sf_version_chnges]([item_id] ASC);

