CREATE TABLE [dbo].[OASyncLog] (
    [Id]            INT                NOT NULL,
    [Executed]      DATETIMEOFFSET (7) NOT NULL,
    [Action]        INT                NOT NULL,
    [SourceId]      VARCHAR (255)      NULL,
    [DestinationId] VARCHAR (255)      NULL,
    [BaseId]        VARCHAR (255)      NULL,
    [CorrelationId] VARCHAR (255)      NULL,
    [BaseName]      VARCHAR (255)      NULL,
    [Description]   NVARCHAR (MAX)     NULL,
    [ListSummary]   INT                NULL,
    CONSTRAINT [pk_OASyncLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

