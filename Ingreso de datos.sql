/*==============================================================*/
/* INGRESOS DE DATOS A LAS TABLAS                               */
/*==============================================================*/

INSERT INTO `rol` (`ROL_COD`, `ROL`) VALUES 
('GER', 'Gerente'), 
('ENT', 'Entrenador'), 
('REC', 'Recepcionista'), 
('LIM', 'Limpieza');

INSERT INTO `membresia` (`COD_MEMBRESIA`, `TIPO_MEMBRESIA`) VALUES 
('BRON', 'Bronce'), 
('PLAT', 'Plata'), 
('ORO', 'Oro'), 
('DIAM', 'Diamante');

INSERT INTO `cliente` (`CED_CLIENTE`, `COD_MEMBRESIA`, `NOMBRES_CLIENTE`, `TELF_CLIENTE`, `FECHA_REGISTRO_CLIENTE`, `FECHA_MEMBRESIA_CLIENTE`) VALUES 
('1315908671', 'DIAM', 'Muñoz López Kelvin', '0999289203', '2020-06-09', '2021-11-01'), 
('1315908672', 'BRON', 'Cedeño Bravo Federico', '0999269215', '2019-12-11', '2021-10-01'), 
('1315908675', 'PLAT', 'Mantuano Lucas Diana', '0999289258', '2019-05-13', '2021-09-14'), 
('1316925748', 'DIAM', 'Pinales Beras José', '0987584598', '2020-03-24', '2021-09-20'), 
('1314857586', 'ORO', 'Pilar Palma Silvia', '0975865741', '2021-02-16', '2021-09-14'), 
('1318564254', 'PLAT', 'Zambrano Reyes Joel', '0984572451', '2021-05-12', '2021-09-18'), 
('1314758426', 'BRON', 'Mantuano Zambrano Victor', '0954258754', '2019-03-28', '2021-02-24'), 
('1314520742', 'ORO', 'Zamora Zambrano Fernanda', '0952745887', '2020-06-12', '2021-09-07'), 
('1314855226', 'BRON', 'Pinargote Ponce Juan', '0988578726', '2021-08-24', '2021-09-15'), 
('1314776259', 'PLAT', 'Cantos Palma Carla', '0998678895', '2021-01-20', '2021-04-23');

INSERT INTO `empleado` (`COD_EMPLEADO`, `ROL_COD`, `CED_EMPLEADO`, `NOMBRES_EMPLEADO`, `DIRECCION_EMPLEADO`, `FECHA_NACIMIENTO_EMP`, `FECHA_INGRESO_EMP`) VALUES 
('1', 'GER', '1310118547', 'Hernán Paredes Francisco', 'Calle 121 Av. 105', '1990-04-18', '2019-01-02'), 
('2', 'LIM', '1314087725', 'Moreira Villareal Julio', 'Calle 13 Av. 15', '1992-05-13', '2019-01-04'), 
('3', 'REC', '1314578963252', 'Zambrano Moreira Flor', 'Calle 108 Av. 110', '1996-02-23', '2019-01-02'), 
('4', 'REC', '1314254748', 'Bailón Palma Franklin', 'Calle 121 Av. 105', '1999-07-15', '2019-01-02'), 
('5', 'ENT', '1314178859', 'Carreño Cedeño Erick', 'Calle 15 Av. 18', '1997-08-14', '2019-01-02'), 
('6', 'ENT', '1314257449', 'Paredes Franco John', 'Calle 18 Av. 13', '1998-06-18', '2020-03-01'), 
('7', 'ENT', '1314025674', 'Pinales Moreira Francisco', 'Urbanización Maratea - H15', '1995-05-26', '2021-01-02'), 
('8', 'ENT', '1314570048', 'Reyes Rivera Luis', 'Calle 126 Av. 101', '1996-05-23', '2021-01-02');

INSERT INTO `entrenador` (`CED_CLIENTE`, `COD_EMPLEADO`) VALUES 
('1315908675', '5'), 
('1315908672', '5'), 
('1314758426', '5'), 
('1316925748', '6'), 
('1315908671', '6'), 
('1314520742', '6'), 
('1314776259', '6'), 
('1314857586', '7'), 
('1318564254', '7'), 
('1314855226', '8');
