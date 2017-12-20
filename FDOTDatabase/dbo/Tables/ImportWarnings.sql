CREATE TABLE [dbo].[ImportWarnings] (
    [ImportId] INT NOT NULL,
    [LogId]    INT NOT NULL,
    CONSTRAINT [pk_ImportWarnings] PRIMARY KEY CLUSTERED ([ImportId] ASC, [LogId] ASC),
    CONSTRAINT [ref_ImportWarnings_OASyncLog] FOREIGN KEY ([LogId]) REFERENCES [dbo].[OASyncLog] ([Id]),
    CONSTRAINT [ref_ImprtWrnngs_OASyn_907689F8] FOREIGN KEY ([ImportId]) REFERENCES [dbo].[OASyncImportSummary] ([Id])
);

