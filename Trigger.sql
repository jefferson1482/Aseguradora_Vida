/*Trigger que no permita el ingreso de más de 5 clientes con el tipo de seguro de vida temporal.*/

CREATE OR REPLACE FUNCTION tg_maximo() RETURNS TRIGGER AS $tg_maximo$
-- TG_NAME == Tipo de dato name; variable que contiene el nombre del disparador que está usando la función actualmente.
  DECLARE
	acumTemporario int;
	maximo int = 5;	
--Inicio
  BEGIN
 	select count(cla_seg_temporario) into acumTemporario from clase_seguro where cla_seg_temporario = new.cla_seg_temporario;
	if(acumTemporario >= maximo) then
		RAISE EXCEPTION 'No se permite mas de 6 registro con el tipo de seguro temporal';
	END if;
   RETURN new;
  END;
 --Fin
$tg_maximo$ 
LANGUAGE plpgsql;

--Trigger
CREATE TRIGGER tg_maximo BEFORE INSERT
    ON clase_seguro FOR EACH ROW 
    EXECUTE PROCEDURE tg_maximo();

/*
insert into ASEGURADO values(7,'RIvera','Jesus',1351127624,'veraj7275@gmail.com',0987684332);
insert into REGISTRO values(7,3,'2020-12-05');
insert into POLIZA values(7,7,7,'1.000000','quincena',15.00,'Nadie');
insert into CLASE_SEGURO values(7,7,'SI',null);
*/