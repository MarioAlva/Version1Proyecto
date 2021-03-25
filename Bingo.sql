DROP DATABASE IF EXISTS Bingo;
CREATE DATABASE Bingo;
USE Bingo;

CREATE TABLE Jugador (
  Username TEXT PRIMARY KEY NOT NULL,
  Password TEXT NOT NULL,
  Nombre TEXT NOT NULL,
  Fondos INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE Partida (
 Identificador INTEGER PRIMARY KEY NOT NULL,
 Fecha DATE NOT NULL,
 Durada TIME NOT NULL,
 Servidor INT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE Game (
  Username INTEGER NOT NULL,
  Identificador INTEGER NOT NULL,
  FOREIGN KEY (Username) REFERENCES Jugador(Username),
  FOREIGN KEY (Identificador) REFERENCES Partida(Identificador)
)ENGINE = InnoDB;

INSERT INTO Jugador VALUES('David00','contraseña,'David',1000);
INSERT INTO Jugador VALUES('Victor00','contraseña,'Victor',2000);
INSERT INTO Jugador VALUES('Mario99','contraseña,'Mario',800);
INSERT INTO Jugador VALUES('Carlitos','contraseña,'Carlos',500);
INSERT INTO Jugador VALUES('JuliaGP','contraseña,'Julia',1800);
INSERT INTO Jugador VALUES('HelenaPJ','contraseña,'Hellen',2100);
INSERT INTO Jugador VALUES('Markituss','contraseña,'Marc',200);
INSERT INTO Partida VALUES(1,'2021-03-23','00:15:32',4);
INSERT INTO Partida VALUES(2,'2021-03-23','00:20:24',6);
INSERT INTO Partida VALUES(3,'2021-03-23','00:30:56',5);
INSERT INTO Game VALUES(1,3);
INSERT INTO Game VALUES(2,1);
INSERT INTO Game VALUES(3,3);
INSERT INTO Game VALUES(4,2);
INSERT INTO Game VALUES(5,2);
INSERT INTO Game VALUES(6,2);
INSERT INTO Game VALUES(7,1);




