CREATE TABLE [dbo].[sf_campaign] (
    [use_google_tracking]      TINYINT          NULL,
    [short_id]                 VARCHAR (255)    NULL,
    [rootCampaign_id]          UNIQUEIDENTIFIER NULL,
    [reply_to_email]           VARCHAR (255)    NULL,
    [related_notification_job] UNIQUEIDENTIFIER NULL,
    [nme]                      NVARCHAR (255)   NULL,
    [message_subject]          NVARCHAR (4000)  NULL,
    [id3]                      UNIQUEIDENTIFIER NULL,
    [id2]                      UNIQUEIDENTIFIER NULL,
    [last_modified]            DATETIME         NOT NULL,
    [is_ready_for_sending]     TINYINT          NOT NULL,
    [id]                       UNIQUEIDENTIFIER NOT NULL,
    [from_name]                NVARCHAR (255)   NULL,
    [delivery_date]            DATETIME         NULL,
    [campaign_state]           INT              NOT NULL,
    [application_name]         VARCHAR (255)    NULL,
    [voa_version]              SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_campaign] PRIMARY KEY CLUSTERED ([id] ASC)
);

