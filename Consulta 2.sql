SELECT 
  concat(asegurador.asegurador_apellido,'-',asegurador.asegurador_nombre) as asegurador, 
  registro.regis_fecha_registro, 
  cubre_poliza.cu_po_individual
FROM 
  public.registro
  inner join public.asegurador on asegurador.asegurador_id = registro.asegurador_id
  inner join public.poliza on poliza.regis_id = registro.regis_id
  inner join public.cubre_poliza on poliza.poli_id = cubre_poliza.cu_po_id
 where
  registro.regis_fecha_registro between '2018-01-01' and '2018-12-31' and
  cubre_poliza.cu_po_individual = 'SI'
