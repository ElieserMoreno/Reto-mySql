CREATE DATABASE AcademiaDB;

USE AcademiaDB;

DROP TABLE IF EXISTS TIPO_MARCA;
DROP TABLE IF EXISTS TIPO_LINEA;
DROP TABLE IF EXISTS vehiculos;

CREATE TABLE TIPO_MARCA (
    ID_vehiculo INT(5) PRIMARY KEY AUTO_INCREMENT,
    desc_vehiculo VARCHAR(100) NOT NULL,
    activo SET('S', 'N') NOT NULL
) ENGINE=InnoDB;

CREATE TABLE TIPO_LINEA (
    ID_linea INT(5) PRIMARY KEY AUTO_INCREMENT,
    desc_linea VARCHAR(100) NOT NULL,
    ID_vehiculo INT(5),
    activo SET('S', 'N') NOT NULL, 
    FOREIGN KEY (`ID_ MARCA`) REFERENCES TIPO_MARCA(`ID_MARCA`)      
) ENGINE=InnoDB;

CREATE TABLE vehiculos (
    NRO_placa VARCHAR(6) PRIMARY KEY,
    ID_linea INT(5),
    modelo set('1995', '2002', '2009', '2016', '2020'),
    fecha_ven_seguro VARCHAR(10) NOT NULL,
    fecha_ven_tecnicomecanica VARCHAR(10) NOT NULL,
    fecha_ven_contratodo VARCHAR(10) NULL,
    FOREIGN KEY (`ID_linea`) REFERENCES TIPO_LINEA(`iID_linea`)    
) ENGINE=InnoDB;



