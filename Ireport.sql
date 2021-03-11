SELECT 
  empresa.emp_nombre as Empresa, 
  count(factura.fac_num) as Cantidad_de_Facturas,
  factura.fac_fecha as Factura
FROM 
  public.empresa
  inner join public.factura on empresa.emp_id = factura.emp_id
  
  group by (Empresa,Factura);
