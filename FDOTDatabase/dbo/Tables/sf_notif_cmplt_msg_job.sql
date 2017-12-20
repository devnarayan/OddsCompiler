CREATE TABLE [dbo].[sf_notif_cmplt_msg_job] (
    [sf_notif_cmplt_msg_job_id]  INT              NOT NULL,
    [total_delivery_subscribers] INT              NULL,
    [timeStarted]                DATETIME         NOT NULL,
    [timeCompleted]              DATETIME         NOT NULL,
    [module_name]                VARCHAR (255)    NULL,
    [id]                         UNIQUEIDENTIFIER NULL,
    [description]                VARCHAR (255)    NULL,
    [account_name]               VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_notif_cmplt_msg_job] PRIMARY KEY CLUSTERED ([sf_notif_cmplt_msg_job_id] ASC)
);

