/*==============================================================*/
/* Table: ASEGURADO                                             */
/*==============================================================*/
create table ASEGURADO (
   ASEGURADO_ID         INT                  not null,
   ASEGURADO_APELLIDO   VARCHAR(50)          not null,
   ASEGURADO_NOMBRE     VARCHAR(50)          not null,
   ASEGURADO_CEDULA     INT                  not null,
   ASEGURADO_CORREO     VARCHAR(50)          not null,
   ASEGURADO_TELEFONO   INT                  not null,
   constraint PK_ASEGURADO primary key (ASEGURADO_ID)
);

/*==============================================================*/
insert into ASEGURADO values(1,'Vera','Jefferson',1351127624,'veraj7275@gmail.com',0987684332);
insert into ASEGURADO values(2,'Alberto','Plua',1341221235,'alberto2020@gmail.com',0987684332);
insert into ASEGURADO values(3,'Centeno','Sara',163466346,'sara2020@gmail.com',0987684332);
insert into ASEGURADO values(4,'Rivas','Joselin',146732345,'rivas2020@gmail.com',0987684332);
insert into ASEGURADO values(5,'Tomala','Eras',142332345,'eras2020@gmail.com',0987684332);
insert into ASEGURADO values(6,'Chavarria','Juan',14232345,'juan2020@gmail.com',0987684332);

/*==============================================================*/
/* Table: ASEGURADOR                                            */
/*==============================================================*/
create table ASEGURADOR (
   ASEGURADOR_ID        INT                  not null,
   ASEGURADOR_APELLIDO  VARCHAR(50)          not null,
   ASEGURADOR_NOMBRE    VARCHAR(50)          not null,
   ASEGURADOR_CEDULA    INT                  not null,
   ASEGURADOR_CORREO    VARCHAR(50)          not null,
   ASEGURADOR_TELEFONO  INT                  not null,
   constraint PK_ASEGURADOR primary key (ASEGURADOR_ID)
);

/*==============================================================*/
insert into ASEGURADOR values(1,'Intriago','Agustin',246253674,'agustin2020@gmail.com',0987684332);
insert into ASEGURADOR values(2,'Parrales','Alexandra',466232457,'ale2020@gmail.com',0987684332);
insert into ASEGURADOR values(3,'Bacuzoy','Julia',654768513,'jualia2020@gmail.com',0987684332);

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   EMP_ID               INT                  not null,
   EMP_NOMBRE           VARCHAR(50)          not null,
   EMP_DIRECCION        VARCHAR(50)          not null,
   EMP_TELEFONO         INT                  not null,
   EMP_CORREO           VARCHAR(50)          not null,
   constraint PK_EMPRESA primary key (EMP_ID)
);

/*==============================================================*/
insert into EMPRESA values(1,'JJVR','Av.25 Calle 17',098887986,'empresa2020@gmail.com');

/*==============================================================*/
/* Table: CLASE_SEGURO                                          */
/*==============================================================*/
create table CLASE_SEGURO (
   CLA_SEG_ID           INT                  not null,
   POLI_ID              INT                  not null,
   CLA_SEG_TEMPORARIO   CHAR(2)              null,
   CLA_SEG_VIDA_ENTERA  CHAR(2)              null,
   constraint PK_CLASE_SEGURO primary key (CLA_SEG_ID)
);

/*==============================================================*/
insert into CLASE_SEGURO values(1,1,'SI',null);
insert into CLASE_SEGURO values(2,2,'SI',null);
insert into CLASE_SEGURO values(3,3,'SI',null);
insert into CLASE_SEGURO values(4,4,'SI','SI');
insert into CLASE_SEGURO values(5,5,null,'SI');
insert into CLASE_SEGURO values(6,6,'SI','SI');

/*==============================================================*/
/* Table: TIPO_PRIMA                                            */
/*==============================================================*/
create table TIPO_PRIMA (
   TIP_PRI_ID           INT                  not null,
   POLI_ID              INT                  not null,
   TIP_PRI_NIVELADA     CHAR(2)              null,
   TIP_PRI_RIESGO       CHAR(2)              null,
   constraint PK_TIPO_PRIMA primary key (TIP_PRI_ID)
);

/*==============================================================*/
insert into TIPO_PRIMA values(1,1,'SI','SI');
insert into TIPO_PRIMA values(2,2,'SI','SI');
insert into TIPO_PRIMA values(3,3,'SI',null);
insert into TIPO_PRIMA values(4,4,null,'SI');
insert into TIPO_PRIMA values(5,5,null,'SI');
insert into TIPO_PRIMA values(6,6,null,'SI');

/*==============================================================*/
/* Table: FUNCION_CANTIDAD                                      */
/*==============================================================*/
create table FUNCION_CANTIDAD (
   DUN_CAN_ID           INT                  not null,
   POLI_ID              INT                  not null,
   DUN_CAN_INDIVIDUAL   CHAR(2)              null,
   DUN_CAN_COLECTIVOS   CHAR(2)              null,
   constraint PK_FUNCION_CANTIDAD primary key (DUN_CAN_ID)
);

/*==============================================================*/
insert into FUNCION_CANTIDAD values(1,1,'SI',null);
insert into FUNCION_CANTIDAD values(2,2,null,'SI');
insert into FUNCION_CANTIDAD values(3,3,'SI',null);
insert into FUNCION_CANTIDAD values(4,4,null,'SI');
insert into FUNCION_CANTIDAD values(5,5,'SI',null);
insert into FUNCION_CANTIDAD values(6,5,null,'SI');

/*==============================================================*/
/* Table: POLIZA                                                */
/*==============================================================*/
create table POLIZA (
   POLI_ID              	INT                   not null,
   REGIS_ID             	INT                   not null,
   ASEGURADO_ID         	INT                   not null,
   POLI_INDEMNIZACION   	DECIMAL               not null,
   POLI_FORMA_PAGO      	VARCHAR(30)           not null,
   POLI_FORMA_BENEFICIARIO      VARCHAR(250)          not null,
   constraint PK_POLIZA primary key (POLI_ID)
);

/*==============================================================*/
insert into POLIZA values(1,1,1,1.000000,'quincena','Nadie');
insert into POLIZA values(2,2,2,1.000000,'mes','Familiar');
insert into POLIZA values(3,3,3,1.000000,'quincena','Hijo');
insert into POLIZA values(4,4,4,1.000000,'quincena','Familiar');
insert into POLIZA values(5,5,5,500.00,'mes','Hijo');
insert into POLIZA values(6,6,6,500.00,'mes','Familiar');

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO (
   REGIS_ID             INT                  not null,
   ASEGURADOR_ID        INT                  not null,
   REGIS_FECHA_REGISTRO DATE                 not null,
   constraint PK_REGISTRO primary key (REGIS_ID)
);

/*==============================================================*/
insert into REGISTRO values(1,1,'2020-12-04');
insert into REGISTRO values(2,1,'2019-11-30');
insert into REGISTRO values(3,1,'2015-01-30');
insert into REGISTRO values(4,2,'2018-05-17');
insert into REGISTRO values(5,2,'2018-07-18');
insert into REGISTRO values(6,3,'2017-05-17');

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   FAC_NUM              INT                         not null,
   EMP_ID               INT                  	    not null,
   REGIS_ID             INT                 	    not null,
   FAC_TOTAL            INT              	    not null,
   FAC_FECHA            DATE      	            not null,
   FAC_PAGO             VARCHAR(30)                 not null,
   constraint PK_FACTURA primary key (FAC_NUM)
);

/*==============================================================*/
insert into FACTURA values('00001',1,1,1.500000,'2021-04-01','Targeta');
insert into FACTURA values('00002',1,2,1.500000,'2020-03-20','Targeta');
insert into FACTURA values('00003',1,3,1.500000,'2015-06-30','Efectivo');
insert into FACTURA values('00004',1,4,1.500000,'2018-11-01','Efectivo');
insert into FACTURA values('00005',1,5,850.00,'2015-06-30','Targeta');
insert into FACTURA values('00006',1,6,850.00,'2018-11-01','Targeta');

/*==============================================================*/
/* Table: DETALLA_FACTURA                                       */
/*==============================================================*/
create table DETALLA_FACTURA (
   FAC_DET_ID           INT                  not null,
   FAC_NUM              INT                  not null,
   FAC_DET_SUBTUTOL     INT                  not null,
   constraint PK_DETALLA_FACTURA primary key (FAC_DET_ID)
);

/*==============================================================*/
insert into DETALLA_FACTURA values(1,'00001',1.500000);
insert into DETALLA_FACTURA values(2,'00002',1.500000);
insert into DETALLA_FACTURA values(3,'00003',1.500000);
insert into DETALLA_FACTURA values(4,'00004',1.500000);
insert into DETALLA_FACTURA values(5,'00005',850.00);
insert into DETALLA_FACTURA values(6,'00006',850.00);


/*==============================================================*/


alter table CLASE_SEGURO
   add constraint FK_CLASE_SE_RELATIONS_POLIZA foreign key (POLI_ID)
      references POLIZA (POLI_ID)
      on delete restrict on update restrict;

alter table DETALLA_FACTURA
   add constraint FK_DETALLA__RELATIONS_FACTURA foreign key (FAC_NUM)
      references FACTURA (FAC_NUM)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_EMPRESA foreign key (EMP_ID)
      references EMPRESA (EMP_ID)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_REGISTRO foreign key (REGIS_ID)
      references REGISTRO (REGIS_ID)
      on delete restrict on update restrict;

alter table FUNCION_CANTIDAD
   add constraint FK_FUNCION__RELATIONS_POLIZA foreign key (POLI_ID)
      references POLIZA (POLI_ID)
      on delete restrict on update restrict;

alter table POLIZA
   add constraint FK_POLIZA_RELATIONS_REGISTRO foreign key (REGIS_ID)
      references REGISTRO (REGIS_ID)
      on delete restrict on update restrict;

alter table POLIZA
   add constraint FK_POLIZA_RELATIONS_ASEGURAD foreign key (ASEGURADO_ID)
      references ASEGURADO (ASEGURADO_ID)
      on delete restrict on update restrict;

alter table REGISTRO
   add constraint FK_REGISTRO_RELATIONS_ASEGURAD foreign key (ASEGURADOR_ID)
      references ASEGURADOR (ASEGURADOR_ID)
      on delete restrict on update restrict;

alter table TIPO_PRIMA
   add constraint FK_TIPO_PRI_RELATIONS_POLIZA foreign key (POLI_ID)
      references POLIZA (POLI_ID)
      on delete restrict on update restrict;

