CREATE TABLE [dbo].[sf_campaign_link] (
    [url]              NVARCHAR (4000)  NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [id2]              UNIQUEIDENTIFIER NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_campaign_link] PRIMARY KEY CLUSTERED ([id] ASC)
);

