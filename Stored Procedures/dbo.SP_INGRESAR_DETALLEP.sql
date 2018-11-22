SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create PROCEDURE [dbo].[SP_INGRESAR_DETALLEP]
AS
BEGIN
update cabezeradetallep set cabezeradetallep.numlinea=detallep.numlinea, cabezeradetallep.preciou=detallep.preciou,
cabezeradetallep.cantidad=detallep.cantidad, cabezeradetallep.codpro=detallep.codpro 
from movimiento.detallep, cabezeradetallep
where detallep.codped=cabezeradetallep.codped
END
GO
