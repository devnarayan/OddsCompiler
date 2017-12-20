CREATE TABLE [dbo].[OASyncImportSummary] (
    [Id]                          INT                NOT NULL,
    [ImportStatus]                INT                NOT NULL,
    [ImportStart]                 DATETIMEOFFSET (7) NOT NULL,
    [ImportEnd]                   DATETIMEOFFSET (7) NULL,
    [ConfigurationName]           NVARCHAR (64)      NOT NULL,
    [LastErrorSynchronizationLog] INT                NULL,
    CONSTRAINT [pk_OASyncImportSummary] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [ref_OASyncImprtSmmry__80271C87] FOREIGN KEY ([ConfigurationName]) REFERENCES [dbo].[OAImportConfigurations] ([Name])
);

