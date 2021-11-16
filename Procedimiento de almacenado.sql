/*Procedimiento de almacenado*/
CREATE PROCEDURE `quien_entrena`(
IN `ncliente` VARCHAR(250)
) 
NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
SELECT cliente.NOMBRES_CLIENTE, empleado.NOMBRES_EMPLEADO AS NNOMBRES_ENTRENADOR 
FROM `empleado` INNER JOIN `cliente` 
INNER JOIN `entrenador` 
WHERE cliente.CED_CLIENTE = entrenador.CED_CLIENTE 
AND empleado.COD_EMPLEADO = entrenador.COD_EMPLEADO 
AND NOMBRES_CLIENTE LIKE CONCAT('%',ncliente,'%')
