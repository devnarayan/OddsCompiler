CREATE TABLE [dbo].[sf_counters] (
    [nme]        VARCHAR (255) NOT NULL,
    [last_value] BIGINT        NOT NULL,
    CONSTRAINT [pk_sf_counters] PRIMARY KEY CLUSTERED ([nme] ASC)
);

