CREATE TABLE [dbo].[SyncTaskExecution] (
    [Id]                   UNIQUEIDENTIFIER   NOT NULL,
    [StartTime]            DATETIMEOFFSET (7) NOT NULL,
    [EndTime]              DATETIMEOFFSET (7) NULL,
    [ErrorMessage]         VARCHAR (1024)     NULL,
    [Status]               INT                NOT NULL,
    [UsesOwnAppdomain]     TINYINT            NOT NULL,
    [SyncStopAction]       INT                NULL,
    [WatchdogUpdateTime]   DATETIMEOFFSET (7) NULL,
    [TaskId]               UNIQUEIDENTIFIER   NULL,
    [ResultId]             INT                NULL,
    [SchedulerExecutionId] UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [pk_SyncTaskExecution] PRIMARY KEY CLUSTERED ([Id] ASC)
);

