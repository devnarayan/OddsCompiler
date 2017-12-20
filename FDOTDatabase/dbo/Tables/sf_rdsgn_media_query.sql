CREATE TABLE [dbo].[sf_rdsgn_media_query] (
    [nme]                            VARCHAR (255)    NULL,
    [mini_site_page_id]              UNIQUEIDENTIFIER NULL,
    [layout_transformations_j_s_o_n] NVARCHAR (MAX)   NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [is_active]                      TINYINT          NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [behavior]                       INT              NOT NULL,
    [application_name]               VARCHAR (255)    NULL,
    [additional_css_file_path]       VARCHAR (255)    NULL,
    [voa_version]                    SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_media_query] PRIMARY KEY CLUSTERED ([id] ASC)
);

