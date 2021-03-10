--Cursor que muestre el numero de facturas realizadas por el primer asegurador "Agustin" y el nombre dela empresa misma.
--Uso de cursor EXPLÍCITO 
do $$
DECLARE
    sum decimal = 0;
    can decimal;
    recorrer record;
    -- Declaración EXPLICITA del cursor
    fact_num CURSOR FOR SELECT * FROM asegurador, empresa, factura, registro
    where 
	asegurador.asegurador_id = registro.asegurador_id AND
	empresa.emp_id = factura.emp_id AND
	registro.regis_id = factura.regis_id AND
	asegurador.asegurador_nombre = 'Agustin';
BEGIN
   -- Procesa el cursor
   FOR can IN fact_num 
   LOOP
	sum = sum + count(can.fac_num);
   END LOOP;
   open fact_num;
   fetch fact_num into recorrer;
   raise notice 'Nombre: %,Asegurador: %,Cantidad: %',  recorrer.emp_nombre, recorrer.asegurador_nombre, sum; 
END $$ 
LANGUAGE 'plpgsql'
