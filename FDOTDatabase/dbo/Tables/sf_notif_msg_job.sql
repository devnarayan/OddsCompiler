CREATE TABLE [dbo].[sf_notif_msg_job] (
    [subsription_list_id]     UNIQUEIDENTIFIER NULL,
    [sender_profile_name]     NVARCHAR (100)   NULL,
    [sender_name]             NVARCHAR (255)   NULL,
    [sender_address]          VARCHAR (255)    NULL,
    [module_name]             VARCHAR (255)    NULL,
    [message_template_id]     UNIQUEIDENTIFIER NULL,
    [last_activity_date]      DATETIME         NULL,
    [job_status]              INT              NOT NULL,
    [id]                      UNIQUEIDENTIFIER NOT NULL,
    [failure_description]     NVARCHAR (MAX)   NULL,
    [description]             NVARCHAR (255)   NULL,
    [clear_subscription_data] TINYINT          NOT NULL,
    [account_name]            VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_notif_msg_job] PRIMARY KEY CLUSTERED ([id] ASC)
);

