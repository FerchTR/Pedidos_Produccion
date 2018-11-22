CREATE TABLE [movimiento].[DetalleP]
(
[numlinea] [tinyint] NOT NULL,
[preciou] [numeric] (7, 2) NULL,
[cantidad] [smallint] NULL,
[codped] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codpro] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
