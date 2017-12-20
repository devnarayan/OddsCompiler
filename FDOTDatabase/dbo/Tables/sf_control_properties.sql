CREATE TABLE [dbo].[sf_control_properties] (
    [val]           NVARCHAR (MAX)   NULL,
    [validation]    NVARCHAR (510)   NULL,
    [prnt_prop_id]  UNIQUEIDENTIFIER NULL,
    [ordinal]       REAL             NOT NULL,
    [nme]           VARCHAR (50)     NULL,
    [last_modified] DATETIME         NULL,
    [language]      VARCHAR (10)     NULL,
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [flags]         INT              NOT NULL,
    [description_]  NVARCHAR (255)   NULL,
    [control_id]    UNIQUEIDENTIFIER NULL,
    [caption_]      NVARCHAR (255)   NULL,
    [app_name]      VARCHAR (50)     NULL,
    [voa_version]   SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_control_properties] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ctrl_props]
    ON [dbo].[sf_control_properties]([nme] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntrl_prprts_prnt_prp_d]
    ON [dbo].[sf_control_properties]([prnt_prop_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_cntrl_prprts_control_id]
    ON [dbo].[sf_control_properties]([control_id] ASC);

