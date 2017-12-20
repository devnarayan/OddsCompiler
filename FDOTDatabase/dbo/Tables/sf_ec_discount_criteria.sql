CREATE TABLE [dbo].[sf_ec_discount_criteria] (
    [user_id]          UNIQUEIDENTIFIER NOT NULL,
    [role_id]          UNIQUEIDENTIFIER NOT NULL,
    [discount_id]      UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [created_date]     DATETIME         NOT NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_discount_criteria] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_dscnt_crtr_dscount_id]
    ON [dbo].[sf_ec_discount_criteria]([discount_id] ASC);

