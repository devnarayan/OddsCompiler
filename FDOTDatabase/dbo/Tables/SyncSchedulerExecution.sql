CREATE TABLE [dbo].[SyncSchedulerExecution] (
    [Id]                      UNIQUEIDENTIFIER   NOT NULL,
    [ProcessId]               INT                NOT NULL,
    [SchedulerName]           VARCHAR (255)      NULL,
    [StartTime]               DATETIMEOFFSET (7) NOT NULL,
    [EndTime]                 DATETIMEOFFSET (7) NULL,
    [WatchdogUpdateTime]      DATETIMEOFFSET (7) NULL,
    [ImportContextUpdateTime] DATETIMEOFFSET (7) NULL,
    [Status]                  INT                NOT NULL,
    [ErrorMessage]            VARCHAR (1024)     NULL,
    CONSTRAINT [pk_SyncSchedulerExecution] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_sync_ex_name]
    ON [dbo].[SyncSchedulerExecution]([SchedulerName] ASC);

