CREATE DATABASE DB_CDS;
USE DB_CDS;

CREATE TABLE Artista (
    Cod_Art INT NOT NULL,
    Nome_Art VARCHAR(100) NOT NULL,
    PRIMARY KEY (Cod_Art),
    UNIQUE (Nome_Art)
);

CREATE TABLE Gravadora (
    Cod_Grav INT NOT NULL,
    Nome_Grav VARCHAR(50) NOT NULL,
    PRIMARY KEY (Cod_Grav),
    UNIQUE (Nome_Grav)
);

CREATE TABLE Categoria (
    Cod_Cat INT NOT NULL,
    Nome_Cat VARCHAR(50) NOT NULL,
    PRIMARY KEY (Cod_Cat),
    UNIQUE (Nome_Cat)
);

CREATE TABLE Estado (
    Sigla_Est CHAR(2) NOT NULL,
    Nome_Est CHAR(50) NOT NULL,
    PRIMARY KEY (Sigla_Est),
    UNIQUE (Nome_Est)
);

CREATE TABLE Cidade (
    Cod_Cid INT NOT NULL,
    Sigla_Est CHAR(2) NOT NULL,
    Nome_Cid VARCHAR(100) NOT NULL,
    PRIMARY KEY (Cod_Cid),
    FOREIGN KEY (Sigla_Est) REFERENCES Estado(Sigla_Est)
);

CREATE TABLE Cliente (
    Cod_Cli INT NOT NULL,
    Cod_Cid INT NOT NULL,
    Nome_Cli VARCHAR(100) NOT NULL,
    End_Cli VARCHAR(200) NOT NULL,
    Renda_Cli DECIMAL(10,2) NOT NULL DEFAULT 0,
    Sexo_Cli CHAR(1) NOT NULL DEFAULT 'F',
    PRIMARY KEY (Cod_Cli),
    FOREIGN KEY (Cod_Cid) REFERENCES Cidade(Cod_Cid)
);

CREATE TABLE Conjuge (
    Cod_Cli INT NOT NULL,
    Nome_Conj VARCHAR(100) NOT NULL,
    Renda_Conj DECIMAL(10,2) NOT NULL DEFAULT 0,
    Sexo_Conj CHAR(1) NOT NULL DEFAULT 'M',
    PRIMARY KEY (Cod_Cli),
    FOREIGN KEY (Cod_Cli) REFERENCES Cliente(Cod_Cli)
);

CREATE TABLE Funcionario (
    Cod_Func INT NOT NULL,
    Nome_Func VARCHAR(100) NOT NULL,
    End_Func VARCHAR(200) NOT NULL,
    Sal_Func DECIMAL(10,2) NOT NULL DEFAULT 0,
    Sexo_Func CHAR(1) NOT NULL DEFAULT 'M',
    PRIMARY KEY (Cod_Func)
);
