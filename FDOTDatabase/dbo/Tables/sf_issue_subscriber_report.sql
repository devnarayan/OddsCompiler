CREATE TABLE [dbo].[sf_issue_subscriber_report] (
    [sf_subscriber_id] UNIQUEIDENTIFIER NULL,
    [message_status]   INT              NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [sf_campaign_id]   UNIQUEIDENTIFIER NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [has_unsubscribed] TINYINT          NOT NULL,
    [has_clicked]      TINYINT          NOT NULL,
    [delivery_status]  INT              NOT NULL,
    [date_opened]      DATETIME         NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_issue_subscriber_report] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_iss_sub_rprt_issue_subscr]
    ON [dbo].[sf_issue_subscriber_report]([sf_campaign_id] ASC, [sf_subscriber_id] ASC);

