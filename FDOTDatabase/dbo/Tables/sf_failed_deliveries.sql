CREATE TABLE [dbo].[sf_failed_deliveries] (
    [subscriber_resolve_key] VARCHAR (255)    NULL,
    [subscriber_id]          UNIQUEIDENTIFIER NULL,
    [job_id]                 UNIQUEIDENTIFIER NULL,
    [id]                     UNIQUEIDENTIFIER NOT NULL,
    [failure_reason]         NVARCHAR (100)   NULL,
    [fail_time]              DATETIME         NOT NULL,
    [description]            NVARCHAR (2000)  NULL,
    [delivery_address]       VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_failed_deliveries] PRIMARY KEY CLUSTERED ([id] ASC)
);

