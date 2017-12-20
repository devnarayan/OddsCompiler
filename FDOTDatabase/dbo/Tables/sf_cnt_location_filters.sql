CREATE TABLE [dbo].[sf_cnt_location_filters] (
    [value]           NVARCHAR (MAX)   NULL,
    [type]            VARCHAR (255)    NULL,
    [name]            NVARCHAR (50)    NULL,
    [id]              UNIQUEIDENTIFIER NOT NULL,
    [cnt_location_id] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_cnt_location_filters] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_cnt_lctn_cnt_id]
    ON [dbo].[sf_cnt_location_filters]([cnt_location_id] ASC);

