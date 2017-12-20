CREATE TABLE [dbo].[sf_object_data] (
    [vrsn]                         INT              NOT NULL,
    [strategy]                     SMALLINT         NOT NULL,
    [parent_prop_id]               UNIQUEIDENTIFIER NULL,
    [object_type]                  VARCHAR (510)    NULL,
    [last_modified]                DATETIME         NULL,
    [is_backend_object]            TINYINT          NOT NULL,
    [id]                           UNIQUEIDENTIFIER NOT NULL,
    [dictionary_key]               VARCHAR (255)    NULL,
    [collection_index]             INT              NOT NULL,
    [app_name]                     VARCHAR (50)     NULL,
    [voa_class]                    INT              NOT NULL,
    [voa_version]                  SMALLINT         NOT NULL,
    [sibling_id]                   UNIQUEIDENTIFIER NULL,
    [shred]                        TINYINT          NULL,
    [place_holder]                 VARCHAR (50)     NULL,
    [personalization_segment_id]   UNIQUEIDENTIFIER NULL,
    [ownr]                         UNIQUEIDENTIFIER NULL,
    [original_control_id]          UNIQUEIDENTIFIER NULL,
    [is_personalized]              TINYINT          NULL,
    [is_overrided_control]         TINYINT          NULL,
    [is_layout_control]            TINYINT          NULL,
    [is_data_source]               TINYINT          NULL,
    [inherits_permissions]         TINYINT          NULL,
    [editable]                     TINYINT          NULL,
    [description_]                 NVARCHAR (255)   NULL,
    [id2]                          UNIQUEIDENTIFIER NULL,
    [culture]                      VARCHAR (10)     NULL,
    [caption_]                     NVARCHAR (255)   NULL,
    [can_inherit_permissions]      TINYINT          NULL,
    [base_control_id]              UNIQUEIDENTIFIER NULL,
    [allow_security]               TINYINT          NULL,
    [personalization_master_id]    UNIQUEIDENTIFIER NULL,
    [page_id]                      UNIQUEIDENTIFIER NULL,
    [enable_override_for_control]  TINYINT          NULL,
    [enable_override_for_control2] TINYINT          NULL,
    [published]                    TINYINT          NULL,
    [content_id]                   UNIQUEIDENTIFIER NULL,
    [published2]                   TINYINT          NULL,
    [id3]                          UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_object_data] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_od_pers_master_id]
    ON [dbo].[sf_object_data]([personalization_master_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_object_data_page_id]
    ON [dbo].[sf_object_data]([page_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_bjct_dta_sibling_id]
    ON [dbo].[sf_object_data]([sibling_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_bjct_dta_parent_prop_id]
    ON [dbo].[sf_object_data]([parent_prop_id] ASC);


GO
CREATE NONCLUSTERED INDEX [Collections]
    ON [dbo].[sf_object_data]([collection_index] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_object_data_id3]
    ON [dbo].[sf_object_data]([id3] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_object_data_content_id]
    ON [dbo].[sf_object_data]([content_id] ASC);

