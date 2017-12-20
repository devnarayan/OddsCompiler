CREATE TABLE [dbo].[sf_ec_order_status_history] (
    [user_id]          UNIQUEIDENTIFIER NOT NULL,
    [order_id]         UNIQUEIDENTIFIER NULL,
    [order_status]     INT              NOT NULL,
    [last_modified]    DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [dte]              DATETIME         NOT NULL,
    [commnt]           NVARCHAR (MAX)   NULL,
    [application_name] VARCHAR (255)    NOT NULL,
    [voa_version]      SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_ec_order_status_history] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_c_rdr_stts_hstry_rdr_id]
    ON [dbo].[sf_ec_order_status_history]([order_id] ASC);

