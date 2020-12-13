SELECT 
  concat(asegurado.asegurado_apellido,'-',asegurado.asegurado_nombre) as cliente,
  clase_seguro.cla_seg_temporario, 
  clase_seguro.cla_seg_vida_entera
FROM 
  public.asegurado
  inner join public.poliza on poliza.asegurado_id = asegurado.asegurado_id
  inner join public.clase_seguro on clase_seguro.poli_id = poliza.poli_id
WHERE
  clase_seguro.cla_seg_temporario = 'SI' and clase_seguro.cla_seg_vida_entera = 'SI'
