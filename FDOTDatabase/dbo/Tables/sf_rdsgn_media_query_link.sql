CREATE TABLE [dbo].[sf_rdsgn_media_query_link] (
    [link_type]        INT              NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [item_type]        VARCHAR (255)    NULL,
    [item_id]          UNIQUEIDENTIFIER NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [application_name] VARCHAR (255)    NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_rdsgn_media_query_link] PRIMARY KEY CLUSTERED ([id] ASC)
);

