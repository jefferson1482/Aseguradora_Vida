SELECT 
  factura.fac_num, 
  factura.fac_fecha, 
  empresa.emp_nombre, 
  asegurador.asegurador_apellido, 
  asegurador.asegurador_nombre, 
  asegurado.asegurado_apellido, 
  asegurado.asegurado_nombre, 
  asegurado.asegurado_cedula, 
  clase_seguro.cla_seg_temporario, 
  clase_seguro.cla_seg_vida_entera, 
  tipo_prima.tip_pri_nivelada, 
  tipo_prima.tip_pri_riesgo, 
  cubre_poliza.cu_po_individual, 
  cubre_poliza.cu_po_colectivos, 
  poliza.poli_indemnizacion, 
  poliza.poli_forma_pago,
  poliza.poli_pago_poliza, 
  poliza.poli_beneficiario, 
  empresa.emp_telefono, 
  empresa.emp_correo, 
  empresa.emp_direccion, 
  registro.regis_fecha_registro
FROM 
  public.factura 
  inner join public.empresa on empresa.emp_id = factura.emp_id
  inner join public.detalla_factura on factura.fac_num = detalla_factura.fac_num
  inner join public.poliza on detalla_factura.poli_id = poliza.poli_id
  inner join public.cubre_poliza on poliza.poli_id = cubre_poliza.poli_id
  inner join public.clase_seguro on poliza.poli_id = clase_seguro.poli_id
  inner join public.tipo_prima on poliza.poli_id = tipo_prima.poli_id
  inner join public.asegurado on asegurado.asegurado_id = poliza.asegurado_id
  inner join public.registro on factura.regis_id = registro.regis_id
  inner join public.asegurador on asegurador.asegurador_id = registro.asegurador_id
  
WHERE 
  factura.fac_num = '00003';
