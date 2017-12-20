CREATE TABLE [dbo].[sf_rdsgn_media_query_rule] (
    [width_type]            INT              NOT NULL,
    [resulting_rule]        VARCHAR (255)    NULL,
    [resolution]            VARCHAR (255)    NULL,
    [parent_media_query_id] UNIQUEIDENTIFIER NULL,
    [orientation]           INT              NOT NULL,
    [min_width]             VARCHAR (255)    NULL,
    [min_height]            VARCHAR (255)    NULL,
    [max_width]             VARCHAR (255)    NULL,
    [max_height]            VARCHAR (255)    NULL,
    [last_modified]         DATETIME         NOT NULL,
    [is_monochrome]         TINYINT          NOT NULL,
    [is_manual_media_query] TINYINT          NOT NULL,
    [is_grid]               TINYINT          NOT NULL,
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [height_type]           INT              NOT NULL,
    [exact_width]           VARCHAR (255)    NULL,
    [exact_height]          VARCHAR (255)    NULL,
    [device_type_name]      VARCHAR (255)    NULL,
    [description]           VARCHAR (255)    NULL,
    [aspect_ratio]          VARCHAR (255)    NULL,
    [application_name]      VARCHAR (255)    NULL,
    [voa_version]           SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_media_query_rule] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_rdsgn_md_qry_rl_prnt_md]
    ON [dbo].[sf_rdsgn_media_query_rule]([parent_media_query_id] ASC);

