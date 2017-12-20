CREATE TABLE [dbo].[oakeygen] (
    [table_name]   VARCHAR (64) NOT NULL,
    [last_used_id] INT          NOT NULL,
    CONSTRAINT [pk_oakeygen] PRIMARY KEY CLUSTERED ([table_name] ASC)
);

