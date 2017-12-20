CREATE TABLE [dbo].[sf_locks] (
    [lckr]     UNIQUEIDENTIFIER NULL,
    [last_mod] DATETIME         NOT NULL,
    [id]       UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_locks] PRIMARY KEY CLUSTERED ([id] ASC)
);

