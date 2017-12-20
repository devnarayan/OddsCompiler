CREATE TABLE [dbo].[sf_tr_trnsltns] (
    [unique_item_key] VARCHAR (255)    NOT NULL,
    [trns_status]     INT              NOT NULL,
    [trg_lang]        VARCHAR (255)    NULL,
    [src_vrsn_type]   INT              NOT NULL,
    [tr_source_id]    UNIQUEIDENTIFIER NULL,
    [owner]           UNIQUEIDENTIFIER NULL,
    [metadata]        VARCHAR (255)    NULL,
    [job_id]          UNIQUEIDENTIFIER NULL,
    [id]              UNIQUEIDENTIFIER NOT NULL,
    [ext_status]      NVARCHAR (500)   NULL,
    [external_id]     VARCHAR (255)    NULL,
    [err_msg]         NVARCHAR (MAX)   NULL,
    [date_modified]   DATETIME         NULL,
    [date_created]    DATETIME         NOT NULL,
    [act_src_lang]    VARCHAR (255)    NOT NULL,
    [voa_version]     SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_tr_trnsltns] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_trns_unq_item_trglang]
    ON [dbo].[sf_tr_trnsltns]([unique_item_key] ASC, [trg_lang] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_trns_status]
    ON [dbo].[sf_tr_trnsltns]([trns_status] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_trns_extrnl_id]
    ON [dbo].[sf_tr_trnsltns]([external_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_tr_trnsltns_tr_surce_id]
    ON [dbo].[sf_tr_trnsltns]([tr_source_id] ASC);

