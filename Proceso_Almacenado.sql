--Procedimiento almacenado que devuelva el total de todas las facturas realizadas por la empresa.
CREATE OR REPLACE FUNCTION public.report_fac_total()
  RETURNS money AS
$BODY$DECLARE total money;

BEGIN
SELECT 
  sum (cast(factura.fac_total as money)) INTO total 
FROM 
  public.factura;
RETURN total;
END;$BODY$
  LANGUAGE plpgsql


--select public.report_fac_total()