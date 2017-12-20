CREATE TABLE [dbo].[sf_form_description_attrbutes] (
    [content_id] UNIQUEIDENTIFIER NOT NULL,
    [mapkey]     VARCHAR (255)    NOT NULL,
    [val]        NVARCHAR (MAX)   NULL,
    CONSTRAINT [pk_sf_frm_dscrptn_ttr_61694FD8] PRIMARY KEY CLUSTERED ([content_id] ASC, [mapkey] ASC),
    CONSTRAINT [ref_sf_frm_dscrptn_tt_A8F24C50] FOREIGN KEY ([content_id]) REFERENCES [dbo].[sf_form_description] ([content_id])
);

