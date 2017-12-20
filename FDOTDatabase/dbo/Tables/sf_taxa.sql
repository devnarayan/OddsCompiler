CREATE TABLE [dbo].[sf_taxa] (
    [url_name_]          NVARCHAR (255)   NULL,
    [title_]             NVARCHAR (255)   NULL,
    [taxonomy_id]        UNIQUEIDENTIFIER NULL,
    [show_in_navigation] TINYINT          NOT NULL,
    [render_as_link]     TINYINT          NOT NULL,
    [ordinal]            REAL             NOT NULL,
    [nme]                NVARCHAR (255)   NULL,
    [last_modified]      DATETIME         NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [description_]       NVARCHAR (2000)  NULL,
    [app_name]           VARCHAR (50)     NULL,
    [parent_id]          UNIQUEIDENTIFIER NULL,
    [voa_class]          INT              NOT NULL,
    [voa_version]        SMALLINT         NOT NULL,
    [fct_txn_fct_tx_id]  UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_taxa] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_taxa_taxonomy_id]
    ON [dbo].[sf_taxa]([taxonomy_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_taxa_fct_txn_fct_tx_id]
    ON [dbo].[sf_taxa]([fct_txn_fct_tx_id] ASC);


GO
CREATE NONCLUSTERED INDEX [idx_sf_taxa_parent_id]
    ON [dbo].[sf_taxa]([parent_id] ASC);

