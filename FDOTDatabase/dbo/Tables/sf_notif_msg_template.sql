CREATE TABLE [dbo].[sf_notif_msg_template] (
    [subject]            NVARCHAR (255)   NULL,
    [plain_text_version] NVARCHAR (MAX)   NULL,
    [module_name]        VARCHAR (255)    NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [body_html]          NVARCHAR (MAX)   NULL,
    [account_name]       VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_notif_msg_template] PRIMARY KEY CLUSTERED ([id] ASC)
);

