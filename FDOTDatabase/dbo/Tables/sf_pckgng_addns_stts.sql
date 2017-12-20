CREATE TABLE [dbo].[sf_pckgng_addns_stts] (
    [strctr_stts] INT              NULL,
    [site_id]     UNIQUEIDENTIFIER NOT NULL,
    [dta_stts]    INT              NULL,
    [addn_id]     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_pckgng_addns_stts] PRIMARY KEY CLUSTERED ([addn_id] ASC, [site_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_pckgng_ddns_stts_ddn_id]
    ON [dbo].[sf_pckgng_addns_stts]([addn_id] ASC);

