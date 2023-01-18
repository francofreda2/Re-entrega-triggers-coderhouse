

create table logs_instrumentos_deportivos (
	 id_instrumento INT UNSIGNED AUTO_INCREMENT primary key not null,
      Nombre_instrumento VARCHAr(20) ,
      precio_instrumento DECIMAL(20,0)
      
      )
      
---trigger

DELIMITER //
cREATE TRIGGER tr_insertar_nuevos_materiales 
After INSERT ON instrumentos_deportivos 
FOR EACH ROW
BEGIN
        INSERT INTO logs_instrumentos_deportivos  (  id_instrumento,
        
      Nombre_instrumento  ,
      precio_instrumento)
              
         VALUES (
          new. id_instrumento,
		new.nombre_instrumento ,
		new. precio_instrumento 
	
        );
END //
DELIMITER ;      
      
      
      
      
      
      
      
insercion de de registracion de instrumentos deportivos 

INSERT INTO  logs_instrumentos_deportivos (id_sucursal,cod_sucursal,Nombre_sucursal,Tel_sucursal,Direccion_sucursal )
values
( 7,NULL,'Banco Frances', 44,'jonte 10')