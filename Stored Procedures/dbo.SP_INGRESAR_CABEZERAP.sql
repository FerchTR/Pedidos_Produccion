SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create PROCEDURE [dbo].[SP_INGRESAR_CABEZERAP]
AS
BEGIN
DECLARE @REGISTRO_CABEZERA INT
select @REGISTRO_CABEZERA = MAX(CAST(SUBSTRING(codped, 3,3) AS int)) from movimiento.cabezerap
insert into cabezeradetallep (codped, fecha, montototal, codcli)
select cabezerap.codped, cabezerap.fecha, cabezerap.montototal, cabezerap.codcli 
from movimiento.cabezerap where codped= CONCAT('R0', @REGISTRO_CABEZERA)
END
GO
