CREATE TABLE [dbo].[sf_content_relation] (
    [subject_type]     VARCHAR (255)    NULL,
    [subject_provider] VARCHAR (255)    NULL,
    [subject_id]       UNIQUEIDENTIFIER NULL,
    [relation_type]    VARCHAR (255)    NULL,
    [object_type]      VARCHAR (255)    NULL,
    [object_provider]  VARCHAR (255)    NULL,
    [object_id]        UNIQUEIDENTIFIER NULL,
    [key]              UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_content_relation] PRIMARY KEY CLUSTERED ([key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_rltn_subj]
    ON [dbo].[sf_content_relation]([subject_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntnt_rltn_obj]
    ON [dbo].[sf_content_relation]([object_id] ASC);

