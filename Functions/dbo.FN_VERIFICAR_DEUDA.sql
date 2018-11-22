SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[FN_VERIFICAR_DEUDA] (@CodCli char(3))
RETURNS BIT
AS
BEGIN
Declare @result bit,
@montoDeudor money,
@creditoCliente money
select @montoDeudor = sum (montototal) from movimiento.Cabezerap where codcli=@CodCli
select @creditoCliente=credito from catalogo.cliente where codcli= @CodCli
if (@montoDeudor>@creditoCliente)
set @result='true'
else
set @result='false'
return(@result)
END
GO
