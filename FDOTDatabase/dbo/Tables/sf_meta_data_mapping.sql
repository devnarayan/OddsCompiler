CREATE TABLE [dbo].[sf_meta_data_mapping] (
    [module_name] VARCHAR (255) NOT NULL,
    [type_name]   VARCHAR (255) NOT NULL,
    [field_name]  VARCHAR (255) NOT NULL,
    [table_name]  VARCHAR (255) NULL,
    CONSTRAINT [pk_sf_meta_data_mapping] PRIMARY KEY CLUSTERED ([field_name] ASC, [module_name] ASC, [type_name] ASC)
);

