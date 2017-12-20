CREATE TABLE [dbo].[sf_ab_campaign] (
    [winning_condition]         INT              NULL,
    [winner_issue_original_id]  UNIQUEIDENTIFIER NULL,
    [winner_issue_id]           UNIQUEIDENTIFIER NULL,
    [testing_sample_percentage] INT              NULL,
    [testing_note]              NVARCHAR (4000)  NULL,
    [testing_ends]              DATETIME         NULL,
    [root_campaign_id]          UNIQUEIDENTIFIER NULL,
    [nme]                       NVARCHAR (255)   NULL,
    [last_modified]             DATETIME         NOT NULL,
    [id]                        UNIQUEIDENTIFIER NOT NULL,
    [date_sent]                 DATETIME         NULL,
    [conclusion]                NVARCHAR (4000)  NULL,
    [campaign_b_id]             UNIQUEIDENTIFIER NULL,
    [campaign_a_id]             UNIQUEIDENTIFIER NULL,
    [application_name]          VARCHAR (255)    NULL,
    [a_b_testing_status]        INT              NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ab_campaign] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ab_campaign_campaign_b]
    ON [dbo].[sf_ab_campaign]([campaign_b_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ab_campaign_campaign_a]
    ON [dbo].[sf_ab_campaign]([campaign_a_id] ASC);

