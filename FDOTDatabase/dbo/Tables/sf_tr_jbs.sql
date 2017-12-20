CREATE TABLE [dbo].[sf_tr_jbs] (
    [trg_langs]    VARCHAR (2000)   NULL,
    [prjc_id]      UNIQUEIDENTIFIER NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [date_created] DATETIME         NOT NULL,
    CONSTRAINT [pk_sf_tr_jbs] PRIMARY KEY CLUSTERED ([id] ASC)
);

