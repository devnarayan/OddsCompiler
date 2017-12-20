CREATE TABLE [dbo].[SyncTask] (
    [Id]                UNIQUEIDENTIFIER   NOT NULL,
    [Description]       NVARCHAR (MAX)     NULL,
    [Priority]          INT                NOT NULL,
    [Enabled]           TINYINT            NOT NULL,
    [FirstExecution]    DATETIMEOFFSET (7) NOT NULL,
    [LastExecution]     DATETIMEOFFSET (7) NULL,
    [FinalExecution]    DATETIMEOFFSET (7) NULL,
    [Name]              VARCHAR (255)      NULL,
    [NextExecution]     DATETIMEOFFSET (7) NULL,
    [ExecutionCount]    INT                NOT NULL,
    [Type]              INT                NOT NULL,
    [RecurrenceRule]    VARCHAR (255)      NULL,
    [FatalityThreshold] INT                NOT NULL,
    [ConfigurationId]   NVARCHAR (64)      NULL,
    CONSTRAINT [pk_SyncTask] PRIMARY KEY CLUSTERED ([Id] ASC)
);

