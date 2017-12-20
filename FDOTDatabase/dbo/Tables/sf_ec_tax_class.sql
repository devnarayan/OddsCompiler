CREATE TABLE [dbo].[sf_ec_tax_class] (
    [title_]           NVARCHAR (255)   NULL,
    [nme]              NVARCHAR (255)   NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_active]        TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_tax_class] PRIMARY KEY CLUSTERED ([id] ASC)
);

