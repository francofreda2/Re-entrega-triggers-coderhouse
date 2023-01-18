
DELIMITER //
cREATE TRIGGER tr_insertar_nuevos_elementos
 Before INSERT ON elementos_limpieza
 FOR EACH ROW
 BEGIN
         INSERT INTO log_elementos_limpieza (  id_elemento,
         
       Nombre_elemento  ,
       precio_elemento)
               
          VALUES (
           new. id_elemento,
   new.Nombre_elemento ,
   new. precio_elemento );
END //
DELIMITER ;      
      