CREATE TABLE [dbo].[sf_ab_test_goal] (
    [predicate_operator] VARCHAR (255)    NULL,
    [ordinal]            INT              NOT NULL,
    [object_name]        NVARCHAR (255)   NULL,
    [object_id]          VARCHAR (255)    NULL,
    [object_culture]     VARCHAR (10)     NULL,
    [is_primary]         TINYINT          NOT NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [goal_type]          INT              NOT NULL,
    [goal_nme_rsrc_key]  VARCHAR (255)    NULL,
    [ab_test_id]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_ab_test_goal] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_ab_test_goal_ab_test_id]
    ON [dbo].[sf_ab_test_goal]([ab_test_id] ASC);

