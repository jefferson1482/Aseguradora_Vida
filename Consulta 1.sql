SELECT 
  concat(asegurador.asegurador_apellido,'-',asegurador.asegurador_nombre) as asegurador, 
  count(registro.asegurador_id) suma_de_registro,
  count(tipo_prima.tip_pri_riesgo) as tipo_riesgo
FROM 
  public.asegurador 
  inner join public.registro on asegurador.asegurador_id = registro.asegurador_id
  inner join public.poliza on registro.regis_id = poliza.regis_id
  inner join public.tipo_prima on poliza.poli_id = tipo_prima.poli_id
WHERE
  asegurador.asegurador_apellido = 'Intriago' and
  tipo_prima.tip_pri_riesgo = 'SI'
  group by (asegurador);
