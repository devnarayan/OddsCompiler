CREATE TABLE [dbo].[sf_sites] (
    [staging_url]              NVARCHAR (255)   NULL,
    [site_map_root_node_id]    UNIQUEIDENTIFIER NULL,
    [site_configuration_mode]  INT              NOT NULL,
    [requires_ssl]             BIT              NOT NULL,
    [redirectIfOffline]        BIT              NOT NULL,
    [ownr]                     UNIQUEIDENTIFIER NULL,
    [offlineSiteMessage]       NVARCHAR (255)   NULL,
    [offlinePageToRedirect]    UNIQUEIDENTIFIER NULL,
    [nme]                      NVARCHAR (255)   NULL,
    [live_url]                 NVARCHAR (255)   NULL,
    [is_offline]               BIT              NOT NULL,
    [isLocatedInMainMenu]      BIT              NOT NULL,
    [is_default]               TINYINT          NOT NULL,
    [inherits_permissions]     TINYINT          NOT NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [home_page_id]             UNIQUEIDENTIFIER NULL,
    [front_end_login_page_url] NVARCHAR (255)   NULL,
    [front_end_login_page_id]  UNIQUEIDENTIFIER NULL,
    [default_culture_key]      NVARCHAR (80)    NULL,
    [can_inherit_permissions]  TINYINT          NOT NULL,
    [application_name]         VARCHAR (255)    NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_sites] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_site_name]
    ON [dbo].[sf_sites]([nme] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_site_live_url]
    ON [dbo].[sf_sites]([live_url] ASC);

