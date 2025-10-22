CREATE DATABASE datosgenerales;
GO

USE datosgenerales;
GO

--tabla 1 datospersonales
CREATE TABLE datospersonales (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Num_Telefono VARCHAR(20),
    Email VARCHAR(50),
    Genero CHAR(1) NOT NULL CHECK (Genero IN ('M','F'))
);

--tabla 2 sucursal
CREATE TABLE sucursal (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre_sucursal VARCHAR(120) NOT NULL,
    Ciudad VARCHAR(100) NOT NULL,
    Direccion VARCHAR(200),
    Cantidad_ventas_anuales DECIMAL(14,2) NOT NULL CHECK (Cantidad_ventas_anuales >= 0)
);

--tabla 3 datosempleado
CREATE TABLE datosempleado (
    Codigo VARCHAR(10) PRIMARY KEY,         
    FK_datospersonales INT NOT NULL,
    FK_Sucursal INT NOT NULL,
    Cargo VARCHAR(100) NOT NULL,
    Horario VARCHAR(100) NOT NULL,
    Salario DECIMAL(12,2) NOT NULL CHECK (Salario >= 0),
    CONSTRAINT FK_empleado_persona FOREIGN KEY (FK_datospersonales) REFERENCES dbo.datospersonales(ID),
    CONSTRAINT FK_empleado_sucursal FOREIGN KEY (FK_Sucursal) REFERENCES dbo.sucursal(ID)
);


SELECT * FROM datospersonales;
SELECT * FROM sucursal;
SELECT * FROM datosempleado;


    --1 datospersonales 
INSERT INTO datospersonales (Nombre, Direccion, Ciudad, Num_Telefono, Email, Genero) VALUES
('Carlos Lopez Ramirez', 'Av. Central #45', 'Monterrey', '8123456789', 'carlos.lopez@correo.com', 'M'),
('Ana Torres Aguilar', 'Calle Juarez #22', 'Guadalajara', '3312345678', 'ana.torres@correo.com', 'F'),
('Luis Garcia Moreno', 'Av. Reforma #100', 'CDMX', '5512345678', 'luis.garcia@correo.com', 'M'),
('Maria Perez Soto', 'Calle Hidalgo #78', 'Puebla', '2223456789', 'maria.perez@correo.com', 'F'),
('Jorge Sanchez Luna', 'Av. Colon #33', 'Leon', '4774567890', 'jorge.sanchez@correo.com', 'M'),
('Lucia Hernandez Rivas', 'Calle Morelos #12', 'Tijuana', '6649876543', 'lucia.hernandez@correo.com', 'F'),
('Pedro Ramos Gutierrez', 'Av. Insurgentes #321', 'CDMX', '5522334455', 'pedro.ramos@correo.com', 'M'),
('Sofia Martinez Delgado', 'Calle Libertad #89', 'Guadalajara', '3311122233', 'sofia.martinez@correo.com', 'F'),
('Ricardo Diaz Cruz', 'Av. Las Torres #20', 'Monterrey', '8119988776', 'ricardo.diaz@correo.com', 'M'),
('Laura Gomez Herrera', 'Calle Juarez #14', 'Leon', '4776655443', 'laura.gomez@correo.com', 'F'),
('Andres Romero Ruiz', 'Av. Revolucion #99', 'Puebla', '2221234567', 'andres.romero@correo.com', 'M'),
('Daniela Cruz Salazar', 'Calle Mexico #17', 'CDMX', '5598765432', 'daniela.cruz@correo.com', 'F'),
('Hector Morales Cano', 'Av. Hidalgo #45', 'Monterrey', '8112345566', 'hector.morales@correo.com', 'M'),
('Fernanda Rojas Cabrera', 'Calle Juarez #32', 'Tijuana', '6643456789', 'fernanda.rojas@correo.com', 'F'),
('Raul Medina Torres', 'Av. Reforma #12', 'Guadalajara', '3319988776', 'raul.medina@correo.com', 'M'),
('Paola Ruiz Estrada', 'Calle Central #18', 'Leon', '4779988776', 'paola.ruiz@correo.com', 'F'),
('Miguel Flores Pineda', 'Av. Universidad #54', 'Puebla', '2225678910', 'miguel.flores@correo.com', 'M'),
('Valeria Ortiz Cabrera', 'Calle Principal #70', 'CDMX', '5556677889', 'valeria.ortiz@correo.com', 'F'),
('Eduardo Vargas Molina', 'Av. Benito Juarez #11', 'Tijuana', '6645566778', 'eduardo.vargas@correo.com', 'M'),
('Adriana Castillo Herrera', 'Calle Hidalgo #28', 'Guadalajara', '3313344556', 'adriana.castillo@correo.com', 'F');


--sucursal
INSERT INTO sucursal (Nombre_Sucursal, Ciudad, Direccion, Cantidad_Ventas_Anuales) VALUES
('Sucursal Norte', 'Monterrey', 'Av. Universidad 200', 520000.00),
('Sucursal Centro', 'Guadalajara', 'Av. Hidalgo 300', 740000.00),
('Sucursal Sur', 'CDMX', 'Av. Insurgentes 150', 960000.00),
('Sucursal Oriente', 'Puebla', 'Av. 5 de Mayo 400', 620000.00),
('Sucursal Occidente', 'León', 'Av. Colón 220', 480000.00),
('Sucursal Frontera', 'Tijuana', 'Av. Revolución 250', 830000.00),
('Sucursal Reforma', 'CDMX', 'Av. Reforma 400', 910000.00),
('Sucursal Hidalgo', 'Puebla', 'Calle Hidalgo 350', 670000.00),
('Sucursal Libertad', 'Guadalajara', 'Calle Libertad 90', 590000),
('Sucursal Torres', 'Monterrey', 'Av. Las Torres 180', 700000),
('Sucursal Central', 'León', 'Calle Central 50', 640000),
('Sucursal México', 'CDMX', 'Av. México 500', 880000),
('Sucursal Morelos', 'Tijuana', 'Calle Morelos 200', 720000),
('Sucursal Industrial', 'Monterrey', 'Av. Industriales 300', 780000),
('Sucursal Zapopan', 'Guadalajara', 'Av. Patria 400', 650000),
('Sucursal Las Américas', 'León', 'Av. Américas 120', 530000),
('Sucursal Universitaria', 'Puebla', 'Av. Universidad 600', 750000),
('Sucursal Benito Juárez', 'CDMX', 'Av. Juárez 220', 870000),
('Sucursal Pacifico', 'Tijuana', 'Av. Pacífico 310', 910000),
('Sucursal Nueva', 'Monterrey', 'Av. Constitución 700', 560000);


--datosempleado
INSERT INTO datosempleado (Codigo, FK_datospersonales, FK_sucursal, Cargo, Horario, Salario) VALUES
('E001', 1, 1, 'Vendedor', '9am-5pm', 12000.00),
('E002', 2, 2, 'Gerente', '8am-6pm', 25000.00),
('E003', 3, 3, 'Cajero', '10am-6pm', 11000.00),
('E004', 4, 4, 'Vendedor', '9am-5pm', 12500.00),
('E005', 5, 5, 'Supervisor', '8am-4pm', 18000.00),
('E006', 6, 6, 'Vendedor', '9am-5pm', 11500.00),
('E007', 7, 7, 'Gerente', '8am-6pm', 24000.00),
('E008', 8, 8, 'Cajero', '10am-6pm', 10500.00),
('E009', 9, 9, 'Vendedor', '9am-5pm', 13000.00),
('E010', 10, 10, 'Supervisor', '8am-4pm', 17500.00),
('E011', 11, 11, 'Cajero', '10am-6pm', 10800.00),
('E012', 12, 12, 'Vendedor', '9am-5pm', 12200.00),
('E013', 13, 13, 'Gerente', '8am-6pm', 26000.00),
('E014', 14, 14, 'Vendedor', '9am-5pm', 11900.00),
('E015', 15, 15, 'Supervisor', '8am-4pm', 18200.00),
('E016', 16, 16, 'Cajero', '10am-6pm', 10700.00),
('E017', 17, 17, 'Vendedor', '9am-5pm', 12100.00),
('E018', 18, 18, 'Gerente', '8am-6pm', 24500.00),
('E019', 19, 19, 'Supervisor', '8am-4pm', 17800.00),
('E020', 20, 20, 'Cajero', '10am-6pm', 10200.00);

SELECT Codigo, FK_datospersonales, FK_Sucursal, Cargo, Horario, Salario
FROM dbo.datosempleado
ORDER BY Codigo;
