create database ventas;
use ventas;

-- Crear la tabla Compañia
CREATE TABLE Compañia (
    CompañiaID INT PRIMARY KEY identity,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255), 
    AñoFundacion INT,
    NIT VARCHAR(20) UNIQUE
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (

    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Telefono VARCHAR(20),
    CompañiaID INT,
    FechaNacimiento DATE,
    FOREIGN KEY (CompañiaID) REFERENCES Compañia(CompañiaID)ON DELETE SET NULL

);

-- Crear la tabla CURSO
CREATE TABLE CURSO (
    CursoID INT PRIMARY KEY identity,
    NombreCurso VARCHAR(100) NOT NULL,
    Duracion INT,
    FechaInicio DATE,
    CompañiaID INT,
    FOREIGN KEY (CompañiaID) REFERENCES Compañia(CompañiaID)ON DELETE SET NULL

);


-- Crear la tabla Pedido
CREATE TABLE Pedido (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    ArticuloID INT,
    CantidadSolicitada INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID) ON DELETE SET NULL,
    FOREIGN KEY (ArticuloID) REFERENCES Articulo(ArticuloID) ON DELETE SET NULL
);

-- Crear la tabla Articulo
CREATE TABLE Articulo (
    ArticuloID INT PRIMARY KEY,
    NombreArticulo VARCHAR(100) NOT NULL
);


INSERT INTO Compañia (Nombre, Direccion, AñoFundacion, NIT)
VALUES
    ('Inversiones Latam', 'Calle Principal 123 Barranquilla, Colombia', 1990, '1234567890'),
    ('Productos del Sur', 'Avenida Central 456 Ciudad de Cali, Colombia', 1985, '9876543210'),
    ('Tecnología Avanzada SA', 'Calle de la Innovación 789 Santiago de Chile, Chile', 2000, '5555555555'),
    ('Electrohogar Latina', 'Avenida de la Electrónica 321 Ciudad de México, México', 1995, '1111111111'),
    ('Alimentos Andinos', 'Avenida de la Comida 654 La Paz, Bolivia', 1988, '4444444444'),
    ('Construcciones del Norte', 'Calle de la Construcción 987 Asunción, Paraguay', 2005, '7777777777'),
    ('Energía Latinamerica', 'Avenida de la Energía 111 San Salvador, El Salvador', 1999, '2222222222'),
    ('Ferretería Central', 'Calle de las Herramientas 234 Lima, Perú', 2002, '8888888888'),
    ('Consultores del Sur', 'Avenida de los Consultores 567 Caracas, Venezuela', 2008, '9999999999'),
    ('Textiles Andinos SA', 'Calle de los Textiles 789 Quito, Ecuador', 1996, '3333333333'),
    ('Comercial Sudamérica', 'Avenida Comercial 567 Ciudad de Guatemala, Guatemala', 2005, '8495764935'),
    ('Industrias del Sur SA', 'Calle Industrial 444 Managua, Nicaragua', 2002, '2348736285'),
    ('Transporte Andino', 'Avenida del Transporte 111 Montevideo, Uruguay', 2009, '4938576956'),
    ('Maderas Latino', 'Calle de la Madera 666 Ciudad de Panamá, Panamá', 2001, '3948762957'),
    ('Almacén Central', 'Avenida del Almacén 555 Santo Domingo, República Dominicana', 2003, '1928492857'),
    ('Productos y Servicios SA', 'Calle Principal 222 San José, Costa Rica', 1996, '5849376589'),
    ('Ferretería del Norte', 'Avenida del Ferretero 333 San Pedro Sula, Honduras', 1997, '4758693947'),
    ('Alimentos Andina', 'Calle de la Comida 888 La Serena, Chile', 1993, '3948794358'),
    ('Industrias Avanzadas SA', 'Avenida de la Industria 777 Ciudad de Managua, Nicaragua', 1995, '3945874893'),
    ('Tecnología Latina', 'Avenida de la Tecnología 222 Ciudad de Bogotá, Colombia', 2003, '4938759384'),
    ('Compañía Latina', 'Calle de la Empresa 987 Ciudad de San Juan, Puerto Rico', 2006, '6787567385'),
    ('Servicios Electrónicos', 'Avenida Tecnológica 345 Ciudad de Santo Domingo, República Dominicana', 2011, '2938475628'),
    ('Productos del Caribe', 'Calle de la Exportación 456 Ciudad de Managua, Nicaragua', 2010, '8475629374'),
    ('Transporte Andino', 'Avenida del Transporte 789 Ciudad de Lima, Perú', 2007, '5928374857'),
    ('Maderas Sudamericanas', 'Calle de la Madera 234 Ciudad de Santiago, Chile', 2008, '4573845927'),
    ('Almacenes del Norte', 'Avenida del Almacén 123 Ciudad de Bogotá, Colombia', 2015, '3847569285'),
    ('Consultores Sudamérica', 'Calle de los Consultores 567 Ciudad de Quito, Ecuador', 2016, '4738592736'),
    ('Industrias Electromecánicas', 'Avenida de la Industria 789 Ciudad de Caracas, Venezuela', 2009, '2394857385'),
    ('Ferretería del Sur', 'Calle Ferretera 111 Ciudad de Asunción, Paraguay', 2013, '9485738409'),
    ('Energía Andina', 'Avenida de la Energía 555 Ciudad de Montevideo, Uruguay', 2012, '2837465927'),
    ('Comercial Latinoamérica', 'Calle Comercial 666 Ciudad de Ciudad de Guatemala, Guatemala', 2014, '3847509308'),
    ('Productos del Pacífico', 'Avenida del Pacífico 222 Ciudad de La Paz, Bolivia', 2018, '2938475927'),
    ('Tecnología del Caribe', 'Calle Tecnológica 444 Ciudad de San Salvador, El Salvador', 2017, '4573849585'),
    ('Alimentos Internacionales', 'Avenida de los Alimentos 666 Ciudad de Ciudad de México, México', 2019, '3847508209'),
    ('Industrias del Caribe SA', 'Calle Industrial 333 Ciudad de San Pedro Sula, Honduras', 2011, '2837464830'),
    ('Maderas del Sur', 'Avenida de la Madera 555 Ciudad de San José, Costa Rica', 2010, '4573927385'),
    ('Transporte Latina', 'Calle del Transporte 222 Ciudad de La Serena, Chile', 2015, '2938473847'),
    ('Ferretería Andina', 'Avenida Ferretera 789 Ciudad de Barranquilla, Colombia', 2013, '3847509273'),
    ('Energía del Pacífico', 'Calle de la Energía 444 Ciudad de Santiago de Chile, Chile', 2014, '2837482039'),
    ('Productos Internacionales', 'Avenida de los Productos 111 Ciudad de Ciudad de Bogotá, Colombia', 2012, '4573829385'),
    ('Tecnología del Norte', 'Calle Tecnológica 777 Ciudad de Quito, Ecuador', 2017, '3847508309'),
    ('Comercial Sudamérica SA', 'Avenida Comercial 333 Ciudad de Caracas, Venezuela', 2018, '2938474038'),
    ('Alimentos Caribeños', 'Calle de la Comida 555 Ciudad de Ciudad de México, México', 2016, '2837485830'),
    ('Industrias del Pacífico', 'Avenida de la Industria 222 Ciudad de San Pedro Sula, Honduras', 2015, '4573927438'),
    ('Transporte del Caribe', 'Calle del Transporte 444 Ciudad de San José, Costa Rica', 2019, '3847502938'),
    ('Ferretería Latina', 'Avenida Ferretera 111 Ciudad de La Serena, Chile', 2020, '2837485927'),
    ('Energía Internacional', 'Calle de la Energía 777 Ciudad de Barranquilla, Colombia', 2014, '4573929385'),
    ('Compañía Ejemplar', 'Avenida Ejemplar 222 Ciudad de Ciudad Imaginaria', 2021, '3847509203'),
    ('Servicios Tecnológicos', 'Calle de los Servicios 444 Ciudad de Ciudad de Ejemplo', 2020, '2938474857'),
    ('Industrias del Sur', 'Avenida Industrial 777 Ciudad de San Juan, Puerto Rico', 2021, '2847509384');


	select * from Compañia


	INSERT INTO Cliente (ClienteID, Nombre, Apellido, Email, Telefono, CompañiaID, FechaNacimiento)
VALUES
    (100000001, 'Juan', 'Gomez', 'juangomez@gmail.com', '5551234567', 1, '1985-03-12'),
    (100000002, 'Maria', 'Lopez', 'marialopez@hotmail.com', '5552345678', 2, '1990-06-28'),
    (100000003, 'Carlos', 'Martinez', 'carlos.martinez@gmail.com', '5553456789', 3, '1988-09-15'),
    (100000004, 'Ana', 'Fernandez', 'ana.fernandez@hotmail.com', '5554567890', 4, '1995-02-08'),
    (100000005, 'Luis', 'Rodriguez', 'luis.rodriguez@gmail.com', '5555678901', 5, '1989-11-20'),
    (100000006, 'Laura', 'Garcia', 'laura.garcia@hotmail.com', '5556789012', 6, '1992-07-17'),
    (100000007, 'Javier', 'Perez', 'javier.perez@gmail.com', '5557890123', 7, '1998-04-25'),
    (100000008, 'Carolina', 'Sanchez', 'carolina.sanchez@hotmail.com', '5558901234', 8, '1987-12-05'),
    (100000009, 'Pedro', 'Rojas', 'pedro.rojas@gmail.com', '5559012345', 9, '1993-10-09'),
    (100000010, 'Sofia', 'Diaz', 'sofia.diaz@hotmail.com', '5550123456', 10, '1994-08-02'),
    (100000011, 'Miguel', 'Cruz', 'miguel.cruz@gmail.com', '5551232345', 11, '1986-01-30'),
    (100000012, 'Isabel', 'Torres', 'isabel.torres@hotmail.com', '5552343456', 12, '1987-07-14'),
    (100000013, 'Diego', 'Ortega', 'diego.ortega@gmail.com', '5553454567', 13, '1991-09-18'),
    (100000014, 'Valentina', 'Luna', 'valentina.luna@hotmail.com', '5554565678', 14, '1997-03-27'),
    (100000015, 'Eduardo', 'Santos', 'eduardo.santos@gmail.com', '5555676789', 15, '1984-05-10'),
    (100000016, 'Mariana', 'Nunez', 'mariana.nunez@hotmail.com', '5556787890', 16, '1996-12-11'),
    (100000017, 'Andres', 'Castillo', 'andres.castillo@gmail.com', '5557898901', 17, '1992-02-14'),
    (100000018, 'Paula', 'Guerra', 'paula.guerra@hotmail.com', '5558909012', 18, '1990-10-29'),
    (100000019, 'Ricardo', 'Mendoza', 'ricardo.mendoza@gmail.com', '5559010123', 19, '1983-08-07'),
    (100000020, 'Natalia', 'Herrera', 'natalia.herrera@hotmail.com', '5550121234', 20, '1989-06-21'),
    (100000021, 'Gonzalo', 'Silva', 'gonzalo.silva@gmail.com', '5551231234', 21, '1995-04-03'),
    (100000022, 'Cecilia', 'Vargas', 'cecilia.vargas@hotmail.com', '5552342345', 22, '1988-11-28'),
    (100000023, 'Alejandro', 'Paredes', 'alejandro.paredes@gmail.com', '5553453456', 23, '1996-07-16'),
    (100000024, 'Patricia', 'Jimenez', 'patricia.jimenez@hotmail.com', '5554564567', 24, '1986-02-13'),
    (100000025, 'Raul', 'Ibanez', 'raul.ibanez@gmail.com', '5555675678', 25, '1994-03-07'),
    (100000026, 'Camila', 'Chavez', 'camila.chavez@hotmail.com', '5556786789', 26, '1992-12-19'),
    (100000027, 'Hernan', 'Gimenez', 'hernan.gimenez@gmail.com', '5557897890', 27, '1993-05-23'),
    (100000028, 'Silvia', 'Lopez', 'silvia.lopez@hotmail.com', '5558908901', 28, '1987-09-02'),
    (100000029, 'Martin', 'Reyes', 'martin.reyes@gmail.com', '5559019012', 29, '1985-04-01'),
    (100000030, 'Lorena', 'Fuentes', 'lorena.fuentes@hotmail.com', '5550120123', 30, '1983-07-22'),
    (100000032, 'Gabriela', 'Morales', 'gabriela.morales@gmail.com', '5552223333', 32, '1994-03-19'),
    (100000033, 'Pablo', 'Soto', 'pablo.soto@hotmail.com', '5553334444', 33, '1993-09-24'),
    (100000034, 'Rosa', 'Gutierrez', 'rosa.gutierrez@gmail.com', '5554445555', 34, '1991-12-15'),
    (100000035, 'Fernando', 'Vega', 'fernando.vega@hotmail.com', '5555556666', 35, '1986-07-31'),
    (100000036, 'Elena', 'Peralta', 'elena.peralta@gmail.com', '5556667777', 36, '1997-02-11'),
    (100000037, 'Julio', 'Cabrera', 'julio.cabrera@hotmail.com', '5557778888', 37, '1990-08-28'),
    (100000038, 'Marta', 'Molina', 'marta.molina@gmail.com', '5558889999', 38, '1989-04-05'),
    (100000039, 'Sergio', 'Ortiz', 'sergio.ortiz@hotmail.com', '5559990000', 39, '1995-10-16'),
    (100000040, 'Lucia', 'Serrano', 'lucia.serrano@gmail.com', '5550001111', 40, '1987-06-23'),
    (100000041, 'Esteban', 'Rivas', 'esteban.rivas@hotmail.com', '5551112222', 41, '1996-01-07'),
    (100000042, 'Andrea', 'Romero', 'andrea.romero@gmail.com', '5552223333', 42, '1993-04-29'),
    (100000043, 'Hector', 'Mendez', 'hector.mendez@hotmail.com', '5553334444', 43, '1985-11-14'),
    (100000044, 'Diana', 'Cruz', 'diana.cruz@gmail.com', '5554445555', 44, '1990-02-02'),
    (100000045, 'Oscar', 'Gonzalez', 'oscar.gonzalez@hotmail.com', '5555556666', 45, '1988-09-09'),
    (100000046, 'Valeria', 'Perez', 'valeria.perez@gmail.com', '5556667777', 46, '1997-05-13'),
    (100000047, 'Manuel', 'Silva', 'manuel.silva@hotmail.com', '5557778888', 47, '1991-03-22'),
    (100000048, 'Liliana', 'Vargas', 'liliana.vargas@gmail.com', '5558889999', 48, '1994-12-04'),
    (100000049, 'Miguel', 'Herrera', 'miguel.herrera@hotmail.com', '5559990000', 49, '1989-08-18'),
    (100000050, 'Susana', 'Lopez', 'susana.lopez@gmail.com', '5550001111', 50, '1992-10-30'),
    (100000051, 'Jorge', 'Perez', 'jorge.perez@gmail.com', '5551111222', 31, '1990-11-15');


	
INSERT INTO CURSO (NombreCurso, Duracion, FechaInicio, CompañiaID)
VALUES
    ('Programación en Java', 90, '2023-02-15', 1),
    ('Diseño Gráfico Avanzado', 60, '2023-03-10', 2),
    ('Marketing Digital', 45, '2023-04-05', 3),
    ('Desarrollo Web Full Stack', 120, '2023-02-28', 4),
    ('Inglés Intermedio', 60, '2023-03-15', 5),
    ('Gestión de Proyectos', 90, '2023-04-20', 6),
    ('Fotografía Profesional', 75, '2023-05-10', 7),
    ('Contabilidad Financiera', 60, '2023-03-05', 8),
    ('Marketing en Redes Sociales', 45, '2023-02-10', 9),
    ('Programación en Python', 90, '2023-02-20', 10),
    ('Diseño de Moda', 60, '2023-04-15', 11),
    ('Gestión de Recursos Humanos', 75, '2023-05-05', 12),
    ('Economía Empresarial', 60, '2023-03-01', 13),
    ('Diseño de Interiores', 90, '2023-03-20', 14),
    ('Inglés Avanzado', 60, '2023-04-10', 15),
    ('Marketing Estratégico', 45, '2023-02-25', 16),
    ('Desarrollo de Aplicaciones Móviles', 120, '2023-03-15', 17),
    ('Gestión de Ventas', 75, '2023-05-20', 18),
    ('Diseño Web y UX', 60, '2023-03-10', 19),
    ('Contabilidad de Costos', 90, '2023-02-05', 20),
    ('Diseño de Videojuegos', 60, '2023-04-20', 21),
    ('Gestión de Calidad', 75, '2023-04-15', 22),
    ('Negocios Internacionales', 60, '2023-03-30', 23),
    ('Diseño de Joyería', 90, '2023-03-25', 24),
    ('Inglés para Negocios', 60, '2023-04-30', 25),
    ('Marketing de Contenidos', 45, '2023-05-25', 26),
    ('Desarrollo de Software', 120, '2023-04-05', 27),
    ('Gestión de Proyectos de IT', 75, '2023-03-10', 28),
    ('Diseño de Paisajes', 60, '2023-04-10', 29),
    ('Finanzas Corporativas', 90, '2023-05-15', 30),
    ('Diseño Industrial', 60, '2023-03-15', 31),
    ('Marketing de Moda', 45, '2023-05-10', 32),
    ('Programación en C#', 120, '2023-03-20', 33),
    ('Gestión de Recursos Naturales', 75, '2023-04-15', 34),
    ('Diseño de Packaging', 60, '2023-04-30', 35),
    ('Contabilidad Fiscal', 90, '2023-05-05', 36),
    ('Diseño de Experiencia de Usuario', 60, '2023-03-25', 37),
    ('Inglés para Viajes', 45, '2023-04-20', 38),
    ('Marketing Deportivo', 75, '2023-03-05', 39),
    ('Desarrollo de Aplicaciones Web', 120, '2023-05-30', 40),
    ('Gestión de Recursos Hídricos', 90, '2023-03-30', 41),
    ('Diseño Sostenible', 60, '2023-05-15', 42),
    ('Logística Empresarial', 45, '2023-04-25', 43),
    ('Diseño de Animación', 75, '2023-05-20', 44),
    ('Programación en Ruby', 120, '2023-03-10', 45),
    ('Gestión de Proyectos de Construcción', 90, '2023-04-05', 46),
    ('Diseño de Muebles', 60, '2023-03-20', 47),
    ('Marketing Gastronómico', 45, '2023-04-10', 48),
    ('Diseño de Efectos Visuales', 75, '2023-03-15', 49),
    ('Inglés para Profesionales de la Salud', 60, '2023-04-15', 50);


INSERT INTO Articulo (ArticuloID, NombreArticulo)
VALUES
    (101, 'Portátil HP Envy 13"'),
    (102, 'Monitor Dell 24" 1080p'),
    (103, 'Mouse inalámbrico Logitech'),
    (104, 'Teclado mecánico Corsair'),
    (105, 'Disco Duro SSD Samsung 500GB'),
    (106, 'Impresora Epson EcoTank'),
    (107, 'Tableta gráfica Wacom Intuos'),
    (108, 'Auriculares Sony WH-1000XM4'),
    (109, 'Router inalámbrico ASUS'),
    (110, 'Cámara Canon EOS Rebel T7i'),
    (111, 'Proyector Epson PowerLite'),
    (112, 'Laptop Dell XPS 15"'),
    (113, 'Monitor LG 27" 4K'),
    (114, 'Ratón gaming Razer DeathAdder'),
    (115, 'Teclado mecánico RGB HyperX Alloy FPS Pro'),
    (116, 'Disco Duro Externo Seagate 2TB'),
    (117, 'Impresora Brother LaserJet'),
    (118, 'Tableta Samsung Galaxy Tab S7'),
    (119, 'Auriculares Bose QuietComfort 35 II'),
    (120, 'Router TP-Link Archer C4000'),
    (121, 'Cámara Sony Alpha 7 III'),
    (122, 'Proyector Optoma HD143X'),
    (123, 'Laptop Lenovo ThinkPad X1 Carbon'),
    (124, 'Monitor ASUS ROG Swift 27" 1440p'),
    (125, 'Ratón inalámbrico Microsoft Surface'),
    (126, 'Teclado mecánico Corsair K70 RGB MK.2'),
    (127, 'Disco Duro SSD Crucial 1TB'),
    (128, 'Impresora HP OfficeJet Pro'),
    (129, 'Tableta Apple iPad Pro'),
    (130, 'Auriculares JBL Quantum 800'),
    (131, 'Router Netgear Nighthawk AX12'),
    (132, 'Cámara Nikon D850'),
    (133, 'Proyector BenQ HT3550'),
    (134, 'Laptop Acer Predator Helios 300'),
    (135, 'Monitor MSI Optix MAG341CQ 34"'),
    (136, 'Ratón Logitech G Pro Wireless'),
    (137, 'Teclado mecánico Ducky One 2 Mini'),
    (138, 'Disco Duro Externo WD Elements 4TB'),
    (139, 'Impresora Canon PIXMA'),
    (140, 'Tableta Microsoft Surface Pro 7'),
    (141, 'Auriculares SteelSeries Arctis Pro'),
    (142, 'Router Linksys Velop AX4200'),
    (143, 'Cámara Panasonic Lumix GH5'),
    (144, 'Proyector LG CineBeam HU85LA'),
    (145, 'Laptop MSI GS66 Stealth'),
    (146, 'Monitor ViewSonic VX3276-2K-MHD 32"'),
    (147, 'Ratón Corsair Dark Core RGB/SE'),
    (148, 'Teclado mecánico Keychron K6'),
    (149, 'Disco Duro SSD Kingston A2000 2TB'),
    (150, 'Impresora Epson WorkForce Pro');


INSERT INTO Pedido (PedidoID, ClienteID, ArticuloID, CantidadSolicitada)
VALUES
    (1, 100000001, 101, 2),
    (2, 100000002, 102, 1),
    (3, 100000003, 103, 5),
    (4, 100000004, 104, 3),
    (5, 100000005, 105, 1),
    (6, 100000006, 106, 2),
    (7, 100000007, 107, 4),
    (8, 100000008, 108, 1),
    (9,  100000009, 109, 3),
    (10, 100000010, 110, 2),
    (11, 100000011, 111, 1),
    (12, 100000012, 112, 2),
    (13, 100000013, 113, 1),
    (14, 100000014, 114, 3),
    (15, 100000015, 115, 2),
    (16, 100000016, 116, 1),
    (17, 100000017, 117, 4),
    (18, 100000018, 118, 2),
    (19, 100000019, 119, 1),
    (20, 100000020, 120, 2),
    (21, 100000021, 121, 1),
    (22, 100000022, 122, 3),
    (23, 100000023, 123, 2),
    (24, 100000024, 124, 1),
    (25, 100000025, 125, 4),
    (26, 100000026, 126, 2),
    (27, 100000027, 127, 1),
    (28, 100000028, 128, 3),
    (29, 100000029, 129, 2),
    (30, 100000030, 130, 1),
    (31, 100000051, 131, 5),
    (32, 100000032, 132, 1),
    (33, 100000033, 133, 2),
    (34, 100000034, 134, 1),
    (35, 100000035, 135, 3),
    (36, 100000036, 136, 2),
    (37, 100000037, 137, 1),
    (38, 100000038, 138, 4),
    (39, 100000039, 139, 2),
    (40, 100000040, 140, 1),
    (41, 100000001, 141, 3),
    (42, 100000002, 101, 2),
    (43, 100000003, 102, 1),
    (44, 100000004, 103, 5),
    (45, 100000005, 104, 3),
    (46, 100000006, 105, 1),
    (47, 100000007, 106, 2),
    (48, 100000008, 107, 4),
    (49, 100000009, 108, 1),
    (50, 100000010, 109, 3);



	--procedimento almacenado insertar de la tabal Compañia


	CREATE PROCEDURE InsertarCompania
    @Nombre VARCHAR(100),
    @Direccion VARCHAR(255),
    @AñoFundacion INT,
    @NIT VARCHAR(20)
AS
BEGIN
    INSERT INTO Compañia (Nombre, Direccion, AñoFundacion, NIT)
    VALUES (@Nombre, @Direccion, @AñoFundacion, @NIT);
END;

EXEC InsertarCompania 
    @Nombre = 'latam express',
    @Direccion = 'av colon Calle imperio',
    @AñoFundacion = 2000,
    @NIT = '2234507890';

	

		--procedimento almacenado editar de la tabal Compañia


		CREATE PROCEDURE EditarCompania
    @CompaniaID INT,
    @Nombre VARCHAR(100),
    @Direccion VARCHAR(255),
    @AñoFundacion INT,
    @NIT VARCHAR(20)
AS
BEGIN
    UPDATE Compañia
    SET Nombre = @Nombre, Direccion = @Direccion, AñoFundacion = @AñoFundacion, NIT = @NIT
    WHERE CompañiaID = @CompaniaID;
END;

EXEC EditarCompania 
    @CompaniaID = 2, 
    @Nombre = 'Productos del norte',
    @Direccion = 'Avenida Central 123 Ciudad de Cali, Colombia',
    @AñoFundacion = 1970,
    @NIT = '9876543210';

	
			--procedimento almacenado eliminar de la tabal Compañia

      CREATE PROCEDURE EliminarCompania
    @CompaniaID INT
AS
BEGIN
    DELETE FROM Compañia
    WHERE CompañiaID = @CompaniaID;
END;


EXEC EliminarCompania 
    @CompaniaID = 3; 

--	select * from Compañia

--procedimento almacenado insertar de la tabal Cliente

 CREATE PROCEDURE InsertarCliente
    @ClienteID INT,
	@Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Email VARCHAR(255),
    @Telefono VARCHAR(20),
    @CompañiaID INT,
    @FechaNacimiento DATE
AS
BEGIN
    INSERT INTO Cliente (ClienteID,Nombre, Apellido, Email, Telefono, CompañiaID, FechaNacimiento)
    VALUES (@ClienteID,@Nombre, @Apellido, @Email, @Telefono, @CompañiaID, @FechaNacimiento);
END;


EXEC InsertarCliente 
    @clienteID ='100010051',
    @Nombre = 'pepe',
    @Apellido = 'perez',
    @Email = 'pepe21@gmail.com',
    @Telefono = '5551234007',
    @CompañiaID = 1,
    @FechaNacimiento = '1985-05-12';

	--procedimento almacenado editar de la tabal Cliente


	CREATE PROCEDURE EditarCliente
    @ClienteID INT,
    @Nombre VARCHAR(100),
    @Apellido VARCHAR(100),
    @Email VARCHAR(255),
    @Telefono VARCHAR(20),
    @CompañiaID INT,
    @FechaNacimiento DATE
AS
BEGIN
    UPDATE Cliente
    SET Nombre = @Nombre, Apellido = @Apellido, Email = @Email, Telefono = @Telefono, CompañiaID = @CompañiaID, FechaNacimiento = @FechaNacimiento
    WHERE ClienteID = @ClienteID;
END;


EXEC EditarCliente 
    @ClienteID =100000001,  
    @Nombre = 'Juanito',
    @Apellido = 'Gomez',
    @Email = 'juamit0@gmail.com',
    @Telefono = '5551234567',
    @CompañiaID = 1,
    @FechaNacimiento = '1985-03-12';

     




	--procedimento almacenado eliminar de la tabal Cliente

	CREATE PROCEDURE EliminarCliente
    @ClienteID INT
AS
BEGIN
    DELETE FROM Cliente
    WHERE ClienteID = @ClienteID;
END;


EXEC EliminarCliente 
    @ClienteID =100000002;


			--procedimento almacenado  editar de la tabal Curso


   create PROCEDURE actualizarCurso
    @CursoID INT,
    @NombreCurso VARCHAR(100),
    @Duracion INT,
    @FechaInicio DATE,
    @CompañiaID INT
AS
BEGIN
    UPDATE Curso
    SET NombreCurso = @NombreCurso, Duracion = @Duracion, FechaInicio = @FechaInicio, CompañiaID = @CompañiaID
    WHERE CursoID = @CursoID;
END;


EXEC actualizarCurso 
    @CursoID = 1, 
    @NombreCurso = 'Programación en Javascript',
    @Duracion = 40,
    @FechaInicio = '2023-02-16',
    @CompañiaID = 1;  


	--procedimento almacenado insertar de la tabal Curso

	CREATE PROCEDURE InsertarCurso
    @NombreCurso VARCHAR(100),
    @Duracion INT,
    @FechaInicio DATE,
    @CompañiaID INT
AS
BEGIN
    INSERT INTO Curso (NombreCurso, Duracion, FechaInicio, CompañiaID)
    VALUES (@NombreCurso, @Duracion, @FechaInicio, @CompañiaID);
END;

EXEC InsertarCurso 
    @NombreCurso = 'Curso de Programación en Angular',
    @Duracion = 60,
    @FechaInicio = '2023-01-15',
    @CompañiaID = 1;  


		--procedimento almacenado Editar de la tabal Curso


	CREATE PROCEDURE EliminarCurso
    @CursoID INT
AS
BEGIN
    DELETE FROM Curso
    WHERE CursoID = @CursoID;
END;

EXEC EliminarCurso 
    @CursoID = 2;

	
	select * from curso

	--. Visualizar los clientes que cumplen años según un mes ingresado por
--parámetros.


CREATE PROCEDURE VisualizarClientesCumpleaños
    @Mes INT
AS
BEGIN
    SELECT ClienteID, Nombre, Apellido, FechaNacimiento
    FROM Cliente
    WHERE MONTH(FechaNacimiento) = @Mes;
END;

EXEC VisualizarClientesCumpleaños @Mes = 4;


/*Visualizar el nombre del cliente, la fecha y el valor según id del cliente ingresado */

CREATE PROCEDURE VisualizarClientePorID
    @ClienteID INT
AS
BEGIN
    SELECT Nombre, FechaNacimiento
    FROM Cliente
    WHERE ClienteID = @ClienteID;
END;


EXEC VisualizarClientePorID @ClienteID = 100000001;


--Visualizar los datos de las empresas fundadas según año ingresado


CREATE PROCEDURE VisualizarEmpresasPorAñoFundacion
    @Año INT
AS
BEGIN
    SELECT CompañiaID, Nombre, Direccion, NIT 
    FROM Compañia
    WHERE AñoFundacion = @Año;
END;

EXEC VisualizarEmpresasPorAñoFundacion @Año = 2000;

--Visualizar los datos de la empresa según nit ingresado.

CREATE PROCEDURE VisualizarEmpresaPorNIT
    @NIT VARCHAR(20)
AS
BEGIN
    SELECT CompañiaID, Nombre, Direccion, AñoFundacion
    FROM Compañia
    WHERE NIT = @NIT;
END;



EXEC VisualizarEmpresaPorNIT @NIT = '1234567890';


/*Visualizar los pedidos que se han realizado según id de articulo ingresado, el
listado debe mostrar el nombre y dirección del cliente, el respectivo número de
pedido y la cantidad solicitada. */

CREATE PROCEDURE VisualizarPedidosPorArticulo
    @ArticuloID INT
AS
BEGIN
    SELECT C.Nombre AS NombreCliente, P.PedidoID, P.CantidadSolicitada
    FROM Pedido AS P
    INNER JOIN Cliente AS C ON P.ClienteID = C.ClienteID
    WHERE P.ArticuloID = @ArticuloID;
END;

EXEC VisualizarPedidosPorArticulo @ArticuloID = 101;








