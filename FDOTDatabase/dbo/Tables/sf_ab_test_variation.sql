CREATE TABLE [dbo].[sf_ab_test_variation] (
    [traffic_distribution] INT              NOT NULL,
    [data_item_id]         UNIQUEIDENTIFIER NULL,
    [ordinal]              INT              NOT NULL,
    [name]                 NVARCHAR (255)   NULL,
    [is_original]          TINYINT          NOT NULL,
    [id]                   UNIQUEIDENTIFIER NOT NULL,
    [ab_test_id]           UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ab_test_variation] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_b_tst_vrtion_ab_test_id]
    ON [dbo].[sf_ab_test_variation]([ab_test_id] ASC);

