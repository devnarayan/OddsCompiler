CREATE TABLE [dbo].[sf_users] (
    [user_name]                      NVARCHAR (255)   NULL,
    [salt]                           VARCHAR (128)    NULL,
    [password_question]              NVARCHAR (500)   NULL,
    [password_format]                INT              NOT NULL,
    [password_answer]                VARCHAR (255)    NULL,
    [passwd]                         VARCHAR (255)    NULL,
    [manager_info]                   UNIQUEIDENTIFIER NULL,
    [last_password_changed_date]     DATETIME         NULL,
    [last_name]                      NVARCHAR (255)   NULL,
    [last_modified]                  DATETIME         NULL,
    [last_login_ip]                  VARCHAR (50)     NULL,
    [last_login_date]                DATETIME         NULL,
    [last_lockout_date]              DATETIME         NULL,
    [last_activity_date]             DATETIME         NULL,
    [is_logged_in]                   BIT              NULL,
    [is_locked_out]                  BIT              NULL,
    [is_backend_user]                BIT              NULL,
    [is_approved]                    BIT              NULL,
    [id]                             UNIQUEIDENTIFIER NOT NULL,
    [first_name]                     NVARCHAR (255)   NULL,
    [fld_psswrd_ttempt_window_start] DATETIME         NULL,
    [failed_password_attempt_count]  INT              NOT NULL,
    [fld_psswrd_nswr_ttmpt_wndw_str] DATETIME         NULL,
    [fld_psswrd_nswer_attempt_count] INT              NOT NULL,
    [ext_provider_name]              NVARCHAR (255)   NULL,
    [email]                          NVARCHAR (255)   NULL,
    [creation_date]                  DATETIME         NULL,
    [commnt]                         VARCHAR (MAX)    NULL,
    [app_name]                       VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_users] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [userNameIndex]
    ON [dbo].[sf_users]([user_name] ASC, [app_name] ASC);


GO
CREATE NONCLUSTERED INDEX [sf_idx_email]
    ON [dbo].[sf_users]([email] ASC);

