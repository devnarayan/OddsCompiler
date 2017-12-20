CREATE TABLE [dbo].[sf_tr_prjcts] (
    [title]          NVARCHAR (255)   NULL,
    [status]         INT              NOT NULL,
    [start_date]     DATETIME         NOT NULL,
    [site_id]        UNIQUEIDENTIFIER NULL,
    [retry_count]    INT              NOT NULL,
    [po_ref]         NVARCHAR (255)   NULL,
    [owner]          UNIQUEIDENTIFIER NULL,
    [id]             UNIQUEIDENTIFIER NOT NULL,
    [external_id]    VARCHAR (255)    NULL,
    [due_date]       DATETIME         NOT NULL,
    [dscrptn]        NVARCHAR (255)   NULL,
    [date_sent]      DATETIME         NULL,
    [date_created]   DATETIME         NOT NULL,
    [date_completed] DATETIME         NULL,
    [cnctr]          VARCHAR (255)    NULL,
    [act_src_lang]   VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_tr_prjcts] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_tr_prjcts_extrnl_id]
    ON [dbo].[sf_tr_prjcts]([external_id] ASC);

