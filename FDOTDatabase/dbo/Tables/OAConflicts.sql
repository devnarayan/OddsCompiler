CREATE TABLE [dbo].[OAConflicts] (
    [Id]                INT                NOT NULL,
    [BaseName]          VARCHAR (255)      NULL,
    [Occured]           DATETIMEOFFSET (7) NOT NULL,
    [SourceId]          VARCHAR (255)      NULL,
    [DestinationId]     VARCHAR (255)      NULL,
    [BaseId]            VARCHAR (255)      NULL,
    [CorrelationId]     VARCHAR (255)      NULL,
    [ConfigurationName] NVARCHAR (64)      NOT NULL,
    CONSTRAINT [pk_OAConflicts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [ref_OACnflcts_OAImprt_87EE1F07] FOREIGN KEY ([ConfigurationName]) REFERENCES [dbo].[OAImportConfigurations] ([Name])
);

