use megatlon ;



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
   new. precio_instrumento );
END //
DELIMITER ;      
      