CREATE TABLE [dbo].[sf_notif_msg_job_log] (
    [subscription_id] UNIQUEIDENTIFIER NOT NULL,
    [message_job_id]  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_notif_msg_job_log] PRIMARY KEY CLUSTERED ([message_job_id] ASC, [subscription_id] ASC)
);

