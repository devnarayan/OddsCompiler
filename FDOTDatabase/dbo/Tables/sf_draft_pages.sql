CREATE TABLE [dbo].[sf_draft_pages] (
    [vrsion]                         INT              NOT NULL,
    [ownr]                           UNIQUEIDENTIFIER NULL,
    [last_modified]                  DATETIME         NULL,
    [is_temp_draft]                  TINYINT          NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [approval_workflow_state_]       NVARCHAR (255)   NULL,
    [app_name]                       VARCHAR (50)     NULL,
    [voa_class]                      INT              NOT NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    [theme]                          NVARCHAR (255)   NULL,
    [url_evaluation_mode]            INT              NULL,
    [template_id]                    UNIQUEIDENTIFIER NULL,
    [personalization_segment_id]     UNIQUEIDENTIFIER NULL,
    [personalization_master_id]      UNIQUEIDENTIFIER NULL,
    [page_id]                        UNIQUEIDENTIFIER NULL,
    [master_page]                    VARCHAR (255)    NULL,
    [last_control_id2]               INT              NULL,
    [is_personalized]                TINYINT          NULL,
    [include_script_manger]          TINYINT          NULL,
    [flags]                          INT              NULL,
    [external_page]                  VARCHAR (255)    NULL,
    [theme2]                         NVARCHAR (255)   NULL,
    [personalization_segment_id2]    UNIQUEIDENTIFIER NULL,
    [personalization_master_id2]     UNIQUEIDENTIFIER NULL,
    [master_page2]                   VARCHAR (255)    NULL,
    [last_control_id]                INT              NULL,
    [ky]                             VARCHAR (255)    NULL,
    [is_personalized2]               TINYINT          NULL,
    [include_script_manger2]         TINYINT          NULL,
    [success_message_]               NVARCHAR (MAX)   NULL,
    [sccss_mssge_after_form_update_] NVARCHAR (255)   NULL,
    [submit_restriction]             INT              NULL,
    [submit_action_after_update]     INT              NULL,
    [submit_action]                  INT              NULL,
    [redirect_page_url_after_update] VARCHAR (255)    NULL,
    [redirect_page_url]              VARCHAR (255)    NULL,
    [content_id]                     UNIQUEIDENTIFIER NULL,
    [nme]                            VARCHAR (255)    NULL,
    [last_control_id3]               INT              NULL,
    [form_label_placement]           INT              NULL,
    [css_class]                      VARCHAR (255)    NULL,
    [is_temp_form]                   TINYINT          NULL,
    CONSTRAINT [pk_sf_draft_pages] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_draft_pages_page_id]
    ON [dbo].[sf_draft_pages]([page_id] ASC);


GO
CREATE NONCLUSTERED INDEX [sf_idx_FormName]
    ON [dbo].[sf_draft_pages]([nme] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_draft_pages_content_id]
    ON [dbo].[sf_draft_pages]([content_id] ASC);

