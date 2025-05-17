#Realizar al menos 3 procedimientos o funciones de ABM de datos.
SELECT `fs_alta_dato`('lautaro', 'lautaro@gmail.com', '123', 'Av viamonte 123', '1534433333', "3");
select * from user;
SELECT `fs_baja_dato`(21);
SELECT `fs_modificar_dato`(1, 'walter', 'walter@gmail.com', '123', 'admin', 'Av medrano 123', '1534833333', "3");

#Realizar al menos 3 procedimientos o funciones para la obtención de reportes de control o de auditoría.
#a)reporte de precio total de ventas confirmadas
call `sp_total_ventas`(1);
#b)usuarios registrados entre dos fechas
call `sp_cant_usuarios_fecha`('2023-11-16', '2023-11-21');
#c)cantidad de ventas entregadas
CALL cant_ventas_entregadas(@result);

#Utilizar un cursor para el recorrido de datos en al menos una función o procedimiento almacenado.
call `ps_cursor`();


#Realizar al menos 3 vistas que sirvan como reportes útiles (no select *)
call `sp_reportes_generales`();


#Crear al menos 1 trigger.
#cambio de precio del producto
DELIMITER //
CREATE TRIGGER `triger_update_precio_producto`
BEFORE UPDATE ON product
for each row
BEGIN
IF NEW.price <> OLD.price then
set NEW.price = New.price * 2;
END IF;
END//
DELIMITER ;
select * from product;
update product set price = 900 where id_product = 2;



DROP TEMPORARY TABLE IF EXISTS temp_table_log;


#Utilizar al menos 1 tabla temporal.
  CREATE TEMPORARY TABLE temp_table_log (
        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        description  VARCHAR(50),
        date datetime
    );
    
DELIMITER //
CREATE TRIGGER log_tabla_usuario 
AFTER INSERT ON user
FOR EACH ROW 
BEGIN
    INSERT INTO temp_table_log (description, date) VALUES (CONCAT("Se creó correctamente el registro: ", NEW.username), current_date());
END;
//
DELIMITER ;

DROP TRIGGER IF EXISTS `log_tabla_usuario`;

SELECT `fs_alta_dato`('maximo', 'maximo@gmail.com', '123', 'Av viamonte 456', '153487333', "2");
select * from user;
SELECT `fs_baja_dato`(24);
select * from temp_table_log;

