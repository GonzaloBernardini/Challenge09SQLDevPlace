CREATE DATABASE EleccionesElectorales2022
USE EleccionesElectorales2022
CREATE TABLE PartidoPolitico(nroDePartido INT NOT NULL IDENTITY PRIMARY KEY,nombreDePartido VARCHAR(50) NOT NULL,presidenteDePartido VARCHAR(50) NOT NULL)

CREATE TABLE Colegio(nroColegio INT NOT NULL IDENTITY PRIMARY KEY,nombreColegio VARCHAR(50) NOT NULL)

CREATE TABLE Votante(nroVotante INT NOT NULL IDENTITY PRIMARY KEY,apenomVotante VARCHAR(50) NOT NULL,dniVotante INT NOT NULL)

CREATE TABLE PresidenteDeMesa(nroPresidenteDeMesa INT NOT NULL IDENTITY PRIMARY KEY,apenomPresidenteDeMesa VARCHAR(50) NOT NULL)

CREATE TABLE DelegadoDeMesa(nroDelegadoDeMesa INT NOT NULL IDENTITY PRIMARY KEY,apenomDelegadoDeMesa VARCHAR(50) NOT NULL)

CREATE TABLE Mesa(nroMesa INT NOT NULL IDENTITY PRIMARY KEY,nroColegio INT NOT NULL,nroPresidenteDeMesa INT NOT NULL,nroDelegadoDeMesa INT NOT NULL,FOREIGN KEY (nroColegio) REFERENCES Colegio(nroColegio),FOREIGN KEY (nroPresidenteDeMesa) REFERENCES PresidenteDeMesa(nroPresidenteDeMesa),FOREIGN KEY (nroDelegadoDeMesa) REFERENCES DelegadoDeMesa(nroDelegadoDeMesa))

CREATE TABLE Urna(nroUrna INT NOT NULL IDENTITY PRIMARY KEY,nroMesa INT NOT NULL,FOREIGN KEY (nroMesa) REFERENCES Mesa(nroMesa))

CREATE TABLE Padron(nroVotante INT NOT NULL IDENTITY PRIMARY KEY,apenomVotante VARCHAR(50) NOT NULL,nroColegio INT NOT NULL,nombreColegio VARCHAR(50) NOT NULL,nroMesa INT NOT NULL,FOREIGN KEY (nroVotante) REFERENCES Votante(nroVotante),FOREIGN KEY (nroColegio) REFERENCES Colegio(nroColegio),FOREIGN KEY (nroMesa) REFERENCES Mesa(nroMesa))

CREATE TABLE Voto(nroVoto INT NOT NULL IDENTITY PRIMARY KEY,nroVotante INT NOT NULL,nroMesa INT NOT NULL,nroColegio INT NOT NULL,nroPartidoPolitico INT NOT NULL,nombreDePartido VARCHAR(50) NOT NULL,FOREIGN KEY (nroVotante) REFERENCES Votante(nroVotante),FOREIGN KEY (nroColegio) REFERENCES Colegio(nroColegio),FOREIGN KEY (nroMesa) REFERENCES Mesa(nroMesa),FOREIGN KEY(nroPartidoPolitico) references PartidoPolitico(NroDePartido))    
