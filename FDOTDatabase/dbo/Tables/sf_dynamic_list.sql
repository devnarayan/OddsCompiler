CREATE TABLE [dbo].[sf_dynamic_list] (
    [sf_dynamic_list_id]         INT              NOT NULL,
    [list_key]                   VARCHAR (255)    NOT NULL,
    [last_name_mapped_field]     VARCHAR (255)    NOT NULL,
    [first_name_mapped_field]    VARCHAR (255)    NOT NULL,
    [email_mapped_field]         VARCHAR (255)    NOT NULL,
    [dynamic_list_provider_name] VARCHAR (255)    NOT NULL,
    [connection_name]            VARCHAR (255)    NOT NULL,
    [voa_version]                SMALLINT         NOT NULL,
    [dynamic_list_id]            UNIQUEIDENTIFIER NULL,
    CONSTRAINT [pk_sf_dynamic_list] PRIMARY KEY CLUSTERED ([sf_dynamic_list_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [idx_sf_dynmc_lst_dynmc_list_id]
    ON [dbo].[sf_dynamic_list]([dynamic_list_id] ASC);

