CREATE TABLE [dbo].[sf_unsubscription_info] (
    [sf_unsubscription_info_id] INT              NOT NULL,
    [unsubscription_list_id]    UNIQUEIDENTIFIER NULL,
    [unsubscription_date]       DATETIME         NOT NULL,
    [id2]                       UNIQUEIDENTIFIER NULL,
    [reason]                    NVARCHAR (255)   NULL,
    [last_modified]             DATETIME         NULL,
    [sf_campaign_id]            UNIQUEIDENTIFIER NULL,
    [id]                        UNIQUEIDENTIFIER NULL,
    [application_name]          VARCHAR (255)    NULL,
    [voa_version]               SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_unsubscription_info] PRIMARY KEY CLUSTERED ([sf_unsubscription_info_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_unsubscr_info_camp_sub]
    ON [dbo].[sf_unsubscription_info]([sf_campaign_id] ASC, [id2] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_unsubscription_info_id2]
    ON [dbo].[sf_unsubscription_info]([id2] ASC);

