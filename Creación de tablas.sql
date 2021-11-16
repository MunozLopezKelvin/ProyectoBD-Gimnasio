/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   CED_CLIENTE          char(20) not null,
   COD_MEMBRESIA        char(250) not null,
   NOMBRES_CLIENTE      char(250) not null,
   TELF_CLIENTE         char(20) not null,
   FECHA_REGISTRO_CLIENTE date not null,
   FECHA_MEMBRESIA_CLIENTE date not null,
   primary key (CED_CLIENTE)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO
(
   COD_EMPLEADO         int not null,
   ROL_COD              char(250) not null,
   CED_EMPLEADO         char(250) not null,
   NOMBRES_EMPLEADO     char(250) not null,
   DIRECCION_EMPLEADO   char(250) not null,
   FECHA_NACIMIENTO_EMP date not null,
   FECHA_INGRESO_EMP    date not null,
   primary key (COD_EMPLEADO)
);

/*==============================================================*/
/* Table: ENTRENADOR                                             */
/*==============================================================*/
create table ENTRENADOR
(
   CED_CLIENTE          char(20) not null,
   COD_EMPLEADO         int not null,
   primary key (CED_CLIENTE)
);

/*==============================================================*/
/* Table: MEMBRESIA                                             */
/*==============================================================*/
create table MEMBRESIA
(
   COD_MEMBRESIA        char(250) not null,
   TIPO_MEMBRESIA       char(250) not null,
   primary key (COD_MEMBRESIA)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   ROL_COD              char(250) not null,
   ROL                  char(250) not null,
   primary key (ROL_COD)
);

alter table CLIENTE add constraint FK_CUENTAN_CON foreign key (COD_MEMBRESIA)
      references MEMBRESIA (COD_MEMBRESIA) on delete restrict on update restrict;

alter table EMPLEADO add constraint FK_ES_ASIGNADO foreign key (ROL_COD)
      references ROL (ROL_COD) on delete restrict on update restrict;

alter table ENTRENADOR add constraint FK_ES foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO) on delete restrict on update restrict;

alter table ENTRENADOR add constraint FK_TIENE foreign key (CED_CLIENTE)
      references CLIENTE (CED_CLIENTE) on delete restrict on update restrict;

	  
	  
