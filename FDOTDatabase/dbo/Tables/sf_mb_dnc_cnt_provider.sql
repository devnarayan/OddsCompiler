CREATE TABLE [dbo].[sf_mb_dnc_cnt_provider] (
    [parent_secured_object_type]  VARCHAR (255)    NULL,
    [parent_secured_object_title] VARCHAR (255)    NULL,
    [parent_secured_object_id]    UNIQUEIDENTIFIER NULL,
    [nme]                         VARCHAR (255)    NULL,
    [last_modified]               DATETIME         NOT NULL,
    [inherits_permissions]        TINYINT          NOT NULL,
    [id]                          UNIQUEIDENTIFIER NOT NULL,
    [can_inherit_permissions]     TINYINT          NOT NULL,
    [application_name]            VARCHAR (255)    NULL,
    [voa_version]                 SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_mb_dnc_cnt_provider] PRIMARY KEY CLUSTERED ([id] ASC)
);

