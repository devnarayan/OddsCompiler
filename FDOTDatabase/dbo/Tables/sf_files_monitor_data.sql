CREATE TABLE [dbo].[sf_files_monitor_data] (
    [package_name] VARCHAR (255)    NULL,
    [id]           UNIQUEIDENTIFIER NOT NULL,
    [file_path]    VARCHAR (255)    NULL,
    [file_name]    VARCHAR (255)    NULL,
    CONSTRAINT [pk_sf_files_monitor_data] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_sf_fls_mntr_dta_path]
    ON [dbo].[sf_files_monitor_data]([file_path] ASC);

