CREATE DATABASE tp_1er_parcial;
USE tp_1er_parcial;

-- contiene los participantes del proyecto
CREATE TABLE participante (
	id_part INT PRIMARY KEY AUTO_INCREMENT,
	legajo INT,
	nombre VARCHAR (50),
	rol CHAR (40)
);

-- contiene cada proyecto
CREATE TABLE proyecto (
	id_proy INT PRIMARY KEY AUTO_INCREMENT,
	proy_descripcion VARCHAR (50) 
);

-- asigna la cantidad de hs trabajadas por dia
CREATE TABLE asignacion_hs (
id_asi INT AUTO_INCREMENT PRIMARY KEY,
id_part INT,
id_proy INT,
cant_horas INT,
fecha DATE, 
foreign key (id_part) references participante (id_part),
foreign key (id_proy) references proyecto (id_proy)
);

-- rendicion del total de horas de cada proyecto 
CREATE TABLE liquidacion_hs (
	id_ren INT AUTO_INCREMENT PRIMARY KEY,
	id_proy INT,
	fecha DATETIME DEFAULT CURRENT_TIMESTAMP, 
	cant_hs_totales DOUBLE,   
	foreign key (id_proy) references proyecto (id_proy)
);

-- rendicion del total de horas de cada proyecto 
CREATE TABLE liquidacion_hs_auditoria (
	id_ren INT AUTO_INCREMENT PRIMARY KEY,
	id_proy INT,
	fecha DATETIME DEFAULT CURRENT_TIMESTAMP, 
	cant_hs_totales DOUBLE,  
	cant_hs_totales_original DOUBLE,   
	foreign key (id_proy) references proyecto (id_proy)
);
-- creacion tabla clientes asociados en un proyecto
CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nom_cliente VARCHAR (30),
	id_proy INT,
	centro_de_costo VARCHAR (40),
	centro_de_facturacion VARCHAR (40),
	FOREIGN KEY (id_proy) REFERENCES proyecto (id_proy)
);

SELECT*FROM participante
SELECT*FROM proyecto
SELECT*FROM asignacion_hs
SELECT*FROM liquidacion_hs
SELECT*FROM liquidacion_hs_auditoria
SELECT*FROM cliente

