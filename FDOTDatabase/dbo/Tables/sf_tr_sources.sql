CREATE TABLE [dbo].[sf_tr_sources] (
    [title]      NVARCHAR (255)   NULL,
    [src_lang]   VARCHAR (255)    NULL,
    [site_id]    UNIQUEIDENTIFIER NULL,
    [root_key]   VARCHAR (255)    NULL,
    [parnt_id]   UNIQUEIDENTIFIER NULL,
    [item_type]  VARCHAR (255)    NULL,
    [item_prvdr] VARCHAR (255)    NULL,
    [item_id]    UNIQUEIDENTIFIER NULL,
    [id]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_tr_sources] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_itm_descrtn]
    ON [dbo].[sf_tr_sources]([item_id] ASC, [item_type] ASC, [item_prvdr] ASC);

