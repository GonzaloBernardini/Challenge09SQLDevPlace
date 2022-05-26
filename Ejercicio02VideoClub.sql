﻿CREATE DATABASE VideoClubEj2;
Create table PELICULA(id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,Titulo varchar(50),Genero varchar(50),FechaBaja DATETIME);
CREATE TABLE ALQUILER(id INT PRIMARY KEY IDENTITY(1,1),PeliculaID INT NOT NULL, FOREIGN KEY (PeliculaID) REFERENCES PELICULA(PeliculaID),Fecha DATETIME,Precio numeric(18,2) )