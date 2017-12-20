CREATE TABLE [dbo].[sf_bounce_stat] (
    [sf_subscriber_id] UNIQUEIDENTIFIER NULL,
    [smtp_status]      VARCHAR (255)    NULL,
    [retry_count]      INT              NOT NULL,
    [message_status]   INT              NULL,
    [last_modified]    DATETIME         NOT NULL,
    [is_processing]    TINYINT          NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [sf_campaign_id]   UNIQUEIDENTIFIER NULL,
    [bounce_status]    INT              NOT NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [additional_info]  VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_bounce_stat] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_bounce_stat_camp_subscr]
    ON [dbo].[sf_bounce_stat]([sf_campaign_id] ASC, [sf_subscriber_id] ASC);

