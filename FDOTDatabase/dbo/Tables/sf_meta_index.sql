CREATE TABLE [dbo].[sf_meta_index] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [nme]         VARCHAR (255)    NULL,
    [unque]       TINYINT          NOT NULL,
    [clstered]    TINYINT          NOT NULL,
    [id2]         UNIQUEIDENTIFIER NULL,
    [voa_version] SMALLINT         NOT NULL,
    CONSTRAINT [pk_sf_meta_index] PRIMARY KEY CLUSTERED ([id] ASC)
);

