CREATE TABLE [dbo].[sf_ec_next_order_number] (
    [nxt]              INT              NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_next_order_number] PRIMARY KEY CLUSTERED ([id] ASC)
);

