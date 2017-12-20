CREATE TABLE [dbo].[sf_dynamic_content] (
    [was_published]            TINYINT          NULL,
    [visible]                  TINYINT          NOT NULL,
    [vrsion]                   INT              NOT NULL,
    [url_name_]                NVARCHAR (255)   NULL,
    [system_parent_type]       VARCHAR (255)    NULL,
    [system_parent_id]         UNIQUEIDENTIFIER NULL,
    [status]                   INT              NOT NULL,
    [publication_date]         DATETIME         NOT NULL,
    [ownr]                     UNIQUEIDENTIFIER NULL,
    [original_content_id]      UNIQUEIDENTIFIER NULL,
    [last_modified_by]         UNIQUEIDENTIFIER NULL,
    [last_modified]            DATETIME         NULL,
    [item_default_url_]        NVARCHAR (510)   NULL,
    [inherits_permissions]     TINYINT          NOT NULL,
    [include_in_sitemap]       TINYINT          NULL,
    [base_id]                  UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]          DATETIME         NULL,
    [date_created]             DATETIME         NULL,
    [can_inherit_permissions]  TINYINT          NOT NULL,
    [approval_workflow_state_] NVARCHAR (255)   NULL,
    [application_name]         VARCHAR (255)    NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_dynamic_content] PRIMARY KEY CLUSTERED ([base_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dyn_sys_prnt_id]
    ON [dbo].[sf_dynamic_content]([application_name] ASC, [system_parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dyn_org_cnt_id]
    ON [dbo].[sf_dynamic_content]([original_content_id] ASC);

