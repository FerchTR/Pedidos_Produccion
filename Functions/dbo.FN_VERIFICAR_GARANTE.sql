SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[FN_VERIFICAR_GARANTE]  (@CodigoGarante char(3))
RETURNS bit
AS
BEGIN
Declare @resultado bit
if not exists (select top 1 1 from DEUDOR where CodCli=@CodigoGarante)
set @resultado='true'
else
set @resultado='false'
Return(@resultado)
END
GO
