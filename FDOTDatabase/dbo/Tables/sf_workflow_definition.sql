CREATE TABLE [dbo].[sf_workflow_definition] (
    [workflow_type]                  INT              NOT NULL,
    [title_]                         NVARCHAR (255)   NULL,
    [snd_scnd_lvl_mail_notification] TINYINT          NOT NULL,
    [snd_frst_lvl_mail_notification] TINYINT          NOT NULL,
    [ownr]                           UNIQUEIDENTIFIER NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [is_active]                      TINYINT          NOT NULL,
    [inherits_permissions]           TINYINT          NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [date_created]                   DATETIME         NOT NULL,
    [custom_xamlx_url]               NVARCHAR (255)   NULL,
    [culture_scope]                  VARCHAR (2000)   NULL,
    [can_inherit_permissions]        TINYINT          NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [allw_pblshers_to_skip_workflow] TINYINT          NOT NULL,
    [allw_dmnstrtrs_t_skip_workflow] TINYINT          NOT NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_workflow_definition] PRIMARY KEY CLUSTERED ([id] ASC)
);

