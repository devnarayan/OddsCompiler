CREATE TABLE [dbo].[sf_form_entry] (
    [visible]          TINYINT          NOT NULL,
    [user_provider]    VARCHAR (255)    NULL,
    [user_id]          UNIQUEIDENTIFIER NULL,
    [title_]           NVARCHAR (255)   NULL,
    [submitted_on]     DATETIME         NULL,
    [status]           INT              NOT NULL,
    [started_on]       DATETIME         NOT NULL,
    [source_site_name] VARCHAR (255)    NULL,
    [source_site_id]   UNIQUEIDENTIFIER NULL,
    [source_key]       VARCHAR (255)    NULL,
    [referral_code]    VARCHAR (255)    NULL,
    [publication_date] DATETIME         NOT NULL,
    [ownr]             UNIQUEIDENTIFIER NULL,
    [last_modified]    DATETIME         NULL,
    [lnguage]          VARCHAR (255)    NULL,
    [ip_address]       VARCHAR (255)    NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [expiration_date]  DATETIME         NULL,
    [description_]     NVARCHAR (255)   NULL,
    [date_created]     DATETIME         NOT NULL,
    [voa_class]        INT              NULL,
    [app_name]         VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_form_entry] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [sf_idx_ApplicationName]
    ON [dbo].[sf_form_entry]([app_name] ASC);

