CREATE TABLE [dbo].[sf_page_data] (
    [theme]                      NVARCHAR (255)   NULL,
    [votes_sum]                  NUMERIC (20, 10) NOT NULL,
    [votes_count]                BIGINT           NOT NULL,
    [visible]                    TINYINT          NOT NULL,
    [views_count]                INT              NOT NULL,
    [view_state_encryption]      INT              NOT NULL,
    [vrsion]                     INT              NOT NULL,
    [variation_type_key]         VARCHAR (255)    NULL,
    [validate_request]           TINYINT          NOT NULL,
    [url_evaluation_mode]        INT              NOT NULL,
    [trace_mode]                 INT              NOT NULL,
    [trace]                      TINYINT          NOT NULL,
    [template_id]                UNIQUEIDENTIFIER NULL,
    [status]                     INT              NOT NULL,
    [source_key]                 VARCHAR (255)    NULL,
    [response_encoding]          VARCHAR (255)    NULL,
    [publication_date]           DATETIME         NOT NULL,
    [personalization_segment_id] UNIQUEIDENTIFIER NULL,
    [personalization_master_id]  UNIQUEIDENTIFIER NULL,
    [ownr]                       UNIQUEIDENTIFIER NULL,
    [cache_profile]              VARCHAR (255)    NULL,
    [page_node_id]               UNIQUEIDENTIFIER NULL,
    [master_page]                VARCHAR (255)    NULL,
    [maintain_scroll]            TINYINT          NOT NULL,
    [locked_by]                  UNIQUEIDENTIFIER NULL,
    [last_modified_by]           UNIQUEIDENTIFIER NULL,
    [last_modified]              DATETIME         NOT NULL,
    [last_control_id]            INT              NOT NULL,
    [keywords_]                  NVARCHAR (500)   NULL,
    [is_personalized]            TINYINT          NOT NULL,
    [is_auto_created]            TINYINT          NOT NULL,
    [include_script_manger]      TINYINT          NOT NULL,
    [content_id]                 UNIQUEIDENTIFIER NOT NULL,
    [html_title_]                NVARCHAR (500)   NULL,
    [head_tag_content]           NVARCHAR (MAX)   NULL,
    [flags]                      INT              NOT NULL,
    [external_page]              VARCHAR (255)    NULL,
    [expiration_date]            DATETIME         NULL,
    [error_page]                 VARCHAR (255)    NULL,
    [enable_view_state_mac]      TINYINT          NOT NULL,
    [enable_view_state]          TINYINT          NOT NULL,
    [enable_theming]             TINYINT          NOT NULL,
    [enable_session_state]       TINYINT          NOT NULL,
    [enable_event_validation]    TINYINT          NOT NULL,
    [description_]               NVARCHAR (MAX)   NULL,
    [date_created]               DATETIME         NULL,
    [culture]                    VARCHAR (10)     NULL,
    [content_state]              VARCHAR (255)    NULL,
    [comments_count]             INT              NOT NULL,
    [code_behind_type]           NVARCHAR (510)   NULL,
    [build_stamp]                INT              NOT NULL,
    [buffer_output]              TINYINT          NOT NULL,
    [app_name]                   VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_page_data] PRIMARY KEY CLUSTERED ([content_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pd_pers_master_id]
    ON [dbo].[sf_page_data]([personalization_master_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_data_template_id]
    ON [dbo].[sf_page_data]([template_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_page_data_page_node_id]
    ON [dbo].[sf_page_data]([page_node_id] ASC);

