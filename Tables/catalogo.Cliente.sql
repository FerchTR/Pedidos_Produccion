CREATE TABLE [catalogo].[Cliente]
(
[codcli] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[codciu] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[garante] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[direnvio] [varchar] (80) COLLATE Modern_Spanish_CI_AS NULL,
[credito] [numeric] (7, 2) NULL,
[descuento] [numeric] (5, 2) NULL
) ON [Secundario]
GO
