CREATE TABLE [movimiento].[CabezeraP]
(
[codped] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[fecha] [datetime] NULL,
[montototal] [numeric] (10, 2) NULL,
[codcli] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[tipoped] [char] (7) COLLATE Modern_Spanish_CI_AS NOT NULL CONSTRAINT [DF__CabezeraP__tipop__2E1BDC42] DEFAULT ('contado')
) ON [PRIMARY]
GO
ALTER TABLE [movimiento].[CabezeraP] ADD CONSTRAINT [CK_TIPOPED] CHECK (([tipoped]='contado' OR [tipoped]='credito'))
GO
