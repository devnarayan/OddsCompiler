CREATE TABLE [dbo].[sf_lst_sf_subscriber] (
    [id2] UNIQUEIDENTIFIER NOT NULL,
    [id]  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [pk_sf_lst_sf_subscriber] PRIMARY KEY CLUSTERED ([id2] ASC, [id] ASC),
    CONSTRAINT [ref_sf_lst_sf_sbscrbr_63418318] FOREIGN KEY ([id]) REFERENCES [dbo].[sf_lst] ([id]),
    CONSTRAINT [ref_sf_lst_sf_sbscrbr_791CF52E] FOREIGN KEY ([id2]) REFERENCES [dbo].[sf_subscriber] ([id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lst_sf_subscriber_id]
    ON [dbo].[sf_lst_sf_subscriber]([id] ASC);

