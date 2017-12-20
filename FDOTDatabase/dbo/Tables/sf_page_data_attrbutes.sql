CREATE TABLE [dbo].[sf_page_data_attrbutes] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [mapkey]     VARCHAR (255)    NOT NULL,
    [val]        NVARCHAR (1000)  NULL,
    CONSTRAINT [pk_sf_page_data_attrbutes] PRIMARY KEY CLUSTERED ([content_id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_pg_dt_ttrbts_s_CA759A20] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_page_data] ([content_id])
);

