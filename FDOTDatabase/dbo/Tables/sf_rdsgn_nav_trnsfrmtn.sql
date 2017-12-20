CREATE TABLE [dbo].[sf_rdsgn_nav_trnsfrmtn] (
    [transformation_name] VARCHAR (255)    NULL,
    [parent_id]           UNIQUEIDENTIFIER NULL,
    [last_modified]       DATETIME         NOT NULL,
    [id]                  UNIQUEIDENTIFIER NOT NULL,
    [css_classes]         VARCHAR (255)    NULL,
    [app_name]            VARCHAR (255)    NULL,
    [voa_version]         SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_nav_trnsfrmtn] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [sf_rdsgn_nav_trnsfrmtn_pmqid]
    ON [dbo].[sf_rdsgn_nav_trnsfrmtn]([parent_id] ASC);

