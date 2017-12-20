CREATE TABLE [dbo].[sf_meta_attribute] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [nme]         VARCHAR (255)    NULL,
    [val]         NVARCHAR (MAX)   NULL,
    [voa_class]   INT              NOT NULL,
    [voa_version] SMALLINT         NOT NULL,
    [id2]         UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_meta_attribute] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_meta_attribute_id2]
    ON [dbo].[sf_meta_attribute]([id2] ASC);

