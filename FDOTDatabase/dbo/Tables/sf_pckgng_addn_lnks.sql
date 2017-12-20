CREATE TABLE [dbo].[sf_pckgng_addn_lnks] (
    [itm_type]    VARCHAR (255)    NULL,
    [itm_prvdr]   VARCHAR (255)    NULL,
    [itm_id]      UNIQUEIDENTIFIER NULL,
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [addn_id]     UNIQUEIDENTIFIER NULL,
    [addtnl_info] VARCHAR (MAX)    NULL,
    CONSTRAINT [pk_sf_pckgng_addn_lnks] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_addn_id_itm_tpe]
    ON [dbo].[sf_pckgng_addn_lnks]([addn_id] ASC, [itm_type] ASC);

