CREATE TABLE [dbo].[sf_lic_user_activity] (
    [user_id]            UNIQUEIDENTIFIER NOT NULL,
    [token_id]           VARCHAR (255)    NULL,
    [provider_name]      VARCHAR (255)    NULL,
    [login_ip]           VARCHAR (50)     NULL,
    [last_login_date]    DATETIME         NULL,
    [last_activity_date] DATETIME         NOT NULL,
    [is_logged_in]       TINYINT          NOT NULL,
    [is_backend_user]    TINYINT          NOT NULL,
    CONSTRAINT [pk_sf_lic_user_activity] PRIMARY KEY CLUSTERED ([user_id] ASC)
);

