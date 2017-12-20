CREATE TABLE [dbo].[sf_ec_exchange_rate_log] (
    [success_type]     INT              NULL,
    [start_time]       DATETIME         NOT NULL,
    [service_id]       UNIQUEIDENTIFIER NOT NULL,
    [log_type]         INT              NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [errors]           NVARCHAR (MAX)   NULL,
    [end_time]         DATETIME         NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_exchange_rate_log] PRIMARY KEY CLUSTERED ([id] ASC)
);

