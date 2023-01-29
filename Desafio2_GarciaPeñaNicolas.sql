--Clase 10:
-- Ejercicio 1:
SELECT * FROM Usuario WHERE NombreUsuario = 'eperez';
-- Ejercicio 2:
--consulta mal
SELECT * FROM Usuario WHERE NombreUsuario = 'eperez' AND Contraseña = 'SoyTobiasCasazza';
--consulta bien
SELECT * FROM Usuario WHERE NombreUsuario = 'eperez' AND Contraseña = 'SoyErnestoPerez';
-- Ejercicio 3:
SELECT * FROM Producto WHERE IdUsuario = 3;
-- Ejercicio 4:
INSERT INTO Usuario (Nombre, Apellido, NombreUsuario, Contraseña, Mail) VALUES ('Nicolás', 'García Peña' , 'nicogpe', '12345', 'nicolasgarciapenia@gmail.com');
-- Ejercicio 5:
INSERT INTO Producto (Descripciones, Costo, PrecioVenta, Stock, IdUsuario) VALUES ('Zapatillas Nike Jordan' , 35000 , 50000, 15, 3);
--Clase 11:
--Ejercicio 1:
UPDATE Usuario SET Contraseña = 'PerezErnesto' WHERE Nombre = 'Ernesto';
--Ejercicio 2:
DELETE FROM Usuario WHERE Apellido ='Casazza';
--Ejercicio 3:
UPDATE Producto SET Stock = 3 WHERE Descripciones = 'Pantalon Jean';
--Ejercicio 4:
DELETE FROM Producto WHERE Descripciones ='Campera';
-- Ejercicio 5:
SELECT Producto.Descripciones, Usuario.Nombre FROM Producto INNER JOIN Usuario ON Producto.IdUsuario = Usuario.Id;

--Desafio
--Ejercicio 1:
SELECT * FROM ProductoVendido;
--Ejercicio 2:
SELECT * FROM ProductoVendido WHERE Stock >= 2;
--Ejercicio 3:
INSERT INTO Venta (Comentarios, IdUsuario) VALUES ('', 2);
INSERT INTO ProductoVendido (Stock, IdProducto, IdVenta) VALUES (20, 1 , 7);
