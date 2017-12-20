CREATE TABLE [dbo].[sf_lbraries_thumbnail_profiles] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [seq]        INT              NOT NULL,
    [val]        NVARCHAR (255)   NULL,
    CONSTRAINT [pk_sf_lbrrs_thmbnl_pr_AB6293EA] PRIMARY KEY CLUSTERED ([content_id] ASC, [seq] ASC),
    CONSTRAINT [ref_sf_lbrrs_thmbnl_p_88772027] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_libraries] ([content_id])
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_lbrrs_thmbnl_prfles_val]
    ON [dbo].[sf_lbraries_thumbnail_profiles]([val] ASC);

