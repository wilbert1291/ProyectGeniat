create database ProyectGeniat;

use ProyectGeniat;

--
-- Table structure for table 'tblroles'
--

DROP TABLE IF EXISTS tblroles;

CREATE TABLE tblroles (
  idRol int(11) NOT NULL AUTO_INCREMENT,
  descripcionRol varchar(50) NOT NULL,
  PRIMARY KEY (idRol)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table 'tblroles'
--

INSERT INTO tblroles VALUES (1,'Rol básico'),(2,'Rol medio'),(3,'Rol medio alto'),(4,'Rol alto medio'),(5,'Rol alto');

--
-- Table structure for table 'tblusuarios'
--

DROP TABLE IF EXISTS tblusuarios;

CREATE TABLE tblusuarios (
  idUsuario int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(40) NOT NULL,
  apellido varchar(40) NOT NULL,
  correo varchar(60) NOT NULL,
  password varchar(60) NOT NULL,
  idRol int(11) NOT NULL,
  tokenJWT varchar(256) DEFAULT NULL,
  creacionToken varchar(100) DEFAULT NULL,
  expiracionToken varchar(100) DEFAULT NULL,
  PRIMARY KEY (idUsuario),
  KEY idRol (idRol),
  CONSTRAINT tblusuarios_ibfk_1 FOREIGN KEY (idRol) REFERENCES tblroles (idRol)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table 'tblusuarios'
--

INSERT INTO tblusuarios VALUES (1,'Wilbert Eduardo','Villegas Gutierrez','wilbert1291@gmail.com','e10adc3949ba59abbe56e057f20f883e',5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2NjE2NjgyMDgsImV4cCI6MTY2MTY2ODIyMywiZGF0YSI6eyJpZCI6IjEiLCJlbWFpbCI6IndpbGJlcnQxMjkxQGdtYWlsLmNvbSIsInJvbCI6IjUifX0.mDOph0-A4Onp0nIS7W5tpT3argQ0m13w1OLm877hWP4','1661668208','1661668223');

--
-- Table structure for table 'tblpublicaciones'
--

DROP TABLE IF EXISTS tblpublicaciones;

CREATE TABLE tblpublicaciones (
  idPublicacion int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(50) NOT NULL,
  descripcion varchar(1000) NOT NULL,
  fechaCreacion datetime NOT NULL,
  idUsuario int(11) NOT NULL,
  borrado int(11) NOT NULL,
  PRIMARY KEY (idPublicacion),
  KEY idUsuario (idUsuario),
  CONSTRAINT tblpublicaciones_ibfk_1 FOREIGN KEY (idUsuario) REFERENCES tblusuarios (idUsuario)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table 'tblpublicaciones'
--

INSERT INTO tblpublicaciones VALUES (1,'Hola mundo actualizado','Descripcion actualizada','2022-08-27 18:33:56',1,0),(2,'Hola mundo actualizado','Descripcion actualizada','2022-08-27 18:35:43',1,1);

