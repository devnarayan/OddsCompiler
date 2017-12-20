CREATE TABLE [dbo].[sf_prs_segment] (
    [type]          VARCHAR (255)    NULL,
    [site_id]       UNIQUEIDENTIFIER NULL,
    [priority]      INT              NOT NULL,
    [nme]           NVARCHAR (255)   NULL,
    [last_modified] DATETIME         NOT NULL,
    [is_active]     TINYINT          NOT NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [description]   NVARCHAR (MAX)   NULL,
    [app_name]      VARCHAR (255)    NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_prs_segment] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_segment_name]
    ON [dbo].[sf_prs_segment]([app_name] ASC, [site_id] ASC, [nme] ASC);

