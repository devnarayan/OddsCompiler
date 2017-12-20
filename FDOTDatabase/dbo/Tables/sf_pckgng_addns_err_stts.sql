CREATE TABLE [dbo].[sf_pckgng_addns_err_stts] (
    [has_errs_on_strctr_imprt] TINYINT          NOT NULL,
    [has_errs_on_cntnt_imprt]  TINYINT          NOT NULL,
    [has_errs_on_actvt]        TINYINT          NOT NULL,
    [addn_id]                  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_pckgng_addns_err_stts] PRIMARY KEY CLUSTERED ([addn_id] ASC)
);

