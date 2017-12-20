CREATE TABLE [dbo].[sf_content_link_attrbutes] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [mapkey] VARCHAR (255)    NOT NULL,
    [val]    NVARCHAR (1000)  NULL,
    CONSTRAINT [pk_sf_content_link_attrbutes] PRIMARY KEY CLUSTERED ([id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_cntnt_lnk_ttrb_E946E39C] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_content_link] ([id])
);

