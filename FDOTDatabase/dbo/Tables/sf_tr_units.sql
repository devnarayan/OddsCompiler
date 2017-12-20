CREATE TABLE [dbo].[sf_tr_units] (
    [trns_id]   UNIQUEIDENTIFIER NULL,
    [title]     NVARCHAR (255)   NULL,
    [trg_val]   NVARCHAR (MAX)   NULL,
    [src_val]   NVARCHAR (MAX)   NULL,
    [prop_name] VARCHAR (255)    NULL,
    [ordinal]   REAL             NOT NULL,
    [id]        UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_tr_units] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_tr_units_trns_id]
    ON [dbo].[sf_tr_units]([trns_id] ASC);

