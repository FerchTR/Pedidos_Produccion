CREATE TABLE [dbo].[DEUDOR]
(
[CodCli] [char] (3) COLLATE Modern_Spanish_CI_AS NULL,
[CodigoGarante] [char] (3) COLLATE Modern_Spanish_CI_AS NULL,
[LimiteCredito] [money] NULL,
[SaldoDeudor] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEUDOR] ADD CONSTRAINT [CK_VERIFICAR_DEUDOR] CHECK (([dbo].[FN_VERIFICAR_DEUDA]([CodCli])='true'))
GO
ALTER TABLE [dbo].[DEUDOR] ADD CONSTRAINT [CK_VERIF_GARANTE] CHECK (([dbo].[FN_VERIFICAR_GARANTE]([CodigoGarante])='true'))
GO
ALTER TABLE [dbo].[DEUDOR] ADD CONSTRAINT [CK_LIMITECREDITO] CHECK (([SaldoDeudor]<=[LimiteCredito]))
GO
