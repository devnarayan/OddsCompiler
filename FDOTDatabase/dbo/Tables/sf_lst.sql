CREATE TABLE [dbo].[sf_lst] (
    [wlcme_template_id]              UNIQUEIDENTIFIER NULL,
    [welcome_message_subject]        VARCHAR (255)    NULL,
    [welcome_message_email_address]  VARCHAR (255)    NULL,
    [unsubscribe_page_id]            UNIQUEIDENTIFIER NULL,
    [total_unsubscriptions]          INT              NOT NULL,
    [title_]                         NVARCHAR (255)   NULL,
    [subscription_reminder_]         NVARCHAR (255)   NULL,
    [send_welcome_message]           TINYINT          NOT NULL,
    [send_good_bye_message]          TINYINT          NOT NULL,
    [last_modified]                  DATETIME         NOT NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [gd_by_template_id]              UNIQUEIDENTIFIER NULL,
    [good_bye_message_subject]       NVARCHAR (255)   NULL,
    [good_bye_message_email_address] VARCHAR (255)    NULL,
    [default_subject_]               NVARCHAR (255)   NULL,
    [default_reply_to_email_]        NVARCHAR (255)   NULL,
    [default_from_name_]             NVARCHAR (255)   NULL,
    [application_name]               VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_lst] PRIMARY KEY CLUSTERED ([id] ASC)
);

