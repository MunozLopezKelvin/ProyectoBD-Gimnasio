/*Código utilizado para ireport*/
SELECT membresia.TIPO_MEMBRESIA AS MEMBRESIAS, COUNT(cliente.COD_MEMBRESIA) AS CANTIDAD_DE_CLIENTES_INSCRITOS FROM `cliente` INNER JOIN `membresia` ON cliente.COD_MEMBRESIA = membresia.COD_MEMBRESIA GROUP BY cliente.COD_MEMBRESIA ORDER BY COUNT(cliente.COD_MEMBRESIA) ASC;