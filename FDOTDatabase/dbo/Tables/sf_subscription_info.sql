CREATE TABLE [dbo].[sf_subscription_info] (
    [sf_subscription_info_id] INT              NOT NULL,
    [subscription_list_id]    UNIQUEIDENTIFIER NULL,
    [subscription_date]       DATETIME         NOT NULL,
    [id2]                     UNIQUEIDENTIFIER NULL,
    [last_modified]           DATETIME         NOT NULL,
    [id]                      UNIQUEIDENTIFIER NULL,
    [application_name]        VARCHAR (255)    NULL,
    [voa_version]             SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_subscription_info] PRIMARY KEY CLUSTERED ([sf_subscription_info_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_subscription_info_id2]
    ON [dbo].[sf_subscription_info]([id2] ASC);

