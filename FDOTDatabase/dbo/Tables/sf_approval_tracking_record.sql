CREATE TABLE [dbo].[sf_approval_tracking_record] (
    [workflow_item_id] UNIQUEIDENTIFIER NULL,
    [user_id]          UNIQUEIDENTIFIER NULL,
    [status]           VARCHAR (255)    NULL,
    [note]             VARCHAR (255)    NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [date_created]     DATETIME         NOT NULL,
    [culture]          INT              NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_approval_tracking_record] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_wrk_itm_id]
    ON [dbo].[sf_approval_tracking_record]([workflow_item_id] ASC, [culture] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_dt_crtd]
    ON [dbo].[sf_approval_tracking_record]([date_created] ASC);

