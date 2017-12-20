CREATE TABLE [dbo].[OASyncListSummary] (
    [Id]                 INT                NOT NULL,
    [ListName]           VARCHAR (255)      NULL,
    [ImportStatus]       INT                NOT NULL,
    [ImportStart]        DATETIMEOFFSET (7) NOT NULL,
    [ImportEnd]          DATETIMEOFFSET (7) NULL,
    [SourceDeletes]      INT                NOT NULL,
    [SourceInserts]      INT                NOT NULL,
    [SourceReads]        INT                NOT NULL,
    [SourceUpdates]      INT                NOT NULL,
    [DestinationDeletes] INT                NOT NULL,
    [DestinationInserts] INT                NOT NULL,
    [DestinationReads]   INT                NOT NULL,
    [DestinationUpdates] INT                NOT NULL,
    [BaseDeletes]        INT                NOT NULL,
    [BaseInserts]        INT                NOT NULL,
    [BaseReads]          INT                NOT NULL,
    [BaseUpdates]        INT                NOT NULL,
    [ImportSummary]      INT                NOT NULL,
    CONSTRAINT [pk_OASyncListSummary] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_OASyncLstSmmry_ImprtSmmary]
    ON [dbo].[OASyncListSummary]([ImportSummary] ASC);

