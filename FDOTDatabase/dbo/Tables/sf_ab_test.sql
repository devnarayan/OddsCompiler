CREATE TABLE [dbo].[sf_ab_test] (
    [winner_variation_id]   UNIQUEIDENTIFIER NULL,
    [title]                 NVARCHAR (255)   NULL,
    [stop_date]             DATETIME         NULL,
    [status]                INT              NOT NULL,
    [start_date]            DATETIME         NULL,
    [site_id]               UNIQUEIDENTIFIER NULL,
    [selected_variation_id] UNIQUEIDENTIFIER NULL,
    [tested_item_id]        UNIQUEIDENTIFIER NULL,
    [owner]                 UNIQUEIDENTIFIER NULL,
    [last_modified]         DATETIME         NULL,
    [id]                    UNIQUEIDENTIFIER NOT NULL,
    [description]           NVARCHAR (255)   NULL,
    [date_created]          DATETIME         NULL,
    [culture]               VARCHAR (10)     NULL,
    [api_key]               VARCHAR (36)     NULL,
    CONSTRAINT [pk_sf_ab_test] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_ab_test_status]
    ON [dbo].[sf_ab_test]([culture] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_ab_test_last_modified]
    ON [dbo].[sf_ab_test]([last_modified] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_ab_test_date_created]
    ON [dbo].[sf_ab_test]([date_created] ASC);

