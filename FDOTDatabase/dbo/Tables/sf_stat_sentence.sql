CREATE TABLE [dbo].[sf_stat_sentence] (
    [verb]                         VARCHAR (255)    NULL,
    [time_stamp]                   DATETIME         NOT NULL,
    [subject_type]                 VARCHAR (255)    NULL,
    [subject_string_meta_field5]   VARCHAR (255)    NULL,
    [subject_string_meta_field4]   VARCHAR (255)    NULL,
    [subject_string_meta_field3]   VARCHAR (255)    NULL,
    [subject_string_meta_field2]   VARCHAR (255)    NULL,
    [subject_string_meta_field1]   VARCHAR (255)    NULL,
    [subject_provider]             VARCHAR (255)    NULL,
    [subject_key]                  VARCHAR (255)    NULL,
    [subject_int_meta_field]       INT              NOT NULL,
    [subject_id]                   UNIQUEIDENTIFIER NULL,
    [subject_double_meta_field]    FLOAT (53)       NOT NULL,
    [subject_decimal_meta_field]   NUMERIC (20, 10) NOT NULL,
    [subject_date_time_meta_field] DATETIME         NOT NULL,
    [subject_bool_meta_field]      TINYINT          NOT NULL,
    [object_type]                  VARCHAR (255)    NULL,
    [object_string_meta_field5]    VARCHAR (255)    NULL,
    [object_string_meta_field4]    VARCHAR (255)    NULL,
    [object_string_meta_field3]    VARCHAR (255)    NULL,
    [object_string_meta_field2]    VARCHAR (255)    NULL,
    [object_string_meta_field1]    VARCHAR (255)    NULL,
    [object_provider]              VARCHAR (255)    NULL,
    [object_key]                   NVARCHAR (2084)  NULL,
    [object_int_meta_field]        INT              NOT NULL,
    [object_id]                    UNIQUEIDENTIFIER NULL,
    [object_double_meta_field]     FLOAT (53)       NOT NULL,
    [object_decimal_meta_field]    NUMERIC (20, 10) NOT NULL,
    [object_date_time_meta_field]  DATETIME         NOT NULL,
    [object_bool_meta_field]       TINYINT          NOT NULL,
    [id]                           BIGINT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [pk_sf_stat_sentence] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_sf_stat_sntnc_subject_key]
    ON [dbo].[sf_stat_sentence]([subject_key] ASC);

