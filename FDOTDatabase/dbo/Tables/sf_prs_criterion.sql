CREATE TABLE [dbo].[sf_prs_criterion] (
    [sf_prs_criterion_id]     INT            NOT NULL,
    [is_negated]              TINYINT        NOT NULL,
    [criterion_value]         NVARCHAR (MAX) NULL,
    [criterion_title]         VARCHAR (255)  NULL,
    [criterion_name]          VARCHAR (255)  NULL,
    [criterion_display_value] NVARCHAR (MAX) NULL,
    [voa_version]             SMALLINT       NOT NULL,
    CONSTRAINT [pk_sf_prs_criterion] PRIMARY KEY CLUSTERED ([sf_prs_criterion_id] ASC)
);

