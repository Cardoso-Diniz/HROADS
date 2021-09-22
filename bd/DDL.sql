create database ProjetoHROADS;

USE ProjetoHROADS;

CREATE TABLE Classe(
idClasse INT PRIMARY KEY IDENTITY,
nomeClasse VARCHAR(200)
);
GO

CREATE TABLE Personagem(
idPersonagem INT PRIMARY KEY IDENTITY,
idClasse INT FOREIGN KEY REFERENCES Classe(idClasse),
nome VARCHAR(200),
CapMana VARCHAR(200),
CapVida VARCHAR(200),
dataAtt Date,
dataCriacao Date
);
GO

CREATE TABLE TipoHabilidade(
idTipoHabilidade INT PRIMARY KEY IDENTITY,
nomeTipoHabilidade VARCHAR(200)
);
GO

CREATE TABLE Habilidade(
idHabilidade INT PRIMARY KEY IDENTITY,
idTipoHabilidade INT FOREIGN KEY REFERENCES TipoHabilidade(idTipoHabilidade),
nomeHabilidade VARCHAR(200)
);
GO

CREATE TABLE ClasseHabilidade(
idClasseHabilidade INT PRIMARY KEY IDENTITY,
idClasse INT FOREIGN KEY REFERENCES Classe(idClasse),
idHabilidade INT FOREIGN KEY REFERENCES Habilidade(idHabilidade)
);
GO



