DROP TABLE Torneio;
DROP TABLE Partida;
DROP TABLE Lugar;
DROP TABLE Arbitro;
DROP TABLE Equipe;
DROP TABLE Jogador;
DROP TABLE Treinador;

CREATE TABLE Torneio (
    cod_torneio INTEGER,
    categoria VARCHAR (30) NOT NULL,
    ano_realizado INTEGER,
    pais_sede VARCHAR (30) NOT NULL,
    PRIMARY KEY (cod_torneio)
);

CREATE TABLE Lugar (
    cod_lugar INTEGER,
    cidade VARCHAR (30) NOT NULL,
    capacidade INTEGER,
    nome_lugar VARCHAR (30) NOT NULL,
    PRIMARY KEY (cod_lugar)
);

CREATE TABLE Arbitro (
    cod_arbitro INTEGER,
    nome_arbitro VARCHAR (30) NOT NULL,
    federacao VARCHAR (30) NOT NULL,
    PRIMARY KEY (cod_arbitro)
);

CREATE TABLE Jogador (
    cod_jogador INTEGER,
    nome_jogador VARCHAR (30) NOT NULL,
    idade_jogador INTEGER,
    mao_pref VARCHAR (2) NOT NULL,
    PRIMARY KEY(cod_jogador)
);

CREATE TABLE Treinador (
    cod_treinador INTEGER,
    nome_treinador VARCHAR (30) NOT NULL,
    idade_treinador INTEGER,
    PRIMARY KEY(cod_treinador)
);

CREATE TABLE Equipe (
    cod_equipe INTEGER,
    n_jogadores INTEGER,
    ranking INTEGER,
    nome_equipe VARCHAR (30) NOT NULL,
    pais_origem VARCHAR (30) NOT NULL,
    cod_jogador INTEGER,
    cod_treinador INTEGER,
    PRIMARY KEY (cod_equipe),
    FOREIGN KEY (cod_jogador) REFERENCES Jogador (cod_jogador),
    FOREIGN KEY (cod_treinador) REFERENCES Treinador (cod_treinador)
);

CREATE TABLE Partida (
    cod_partida INTEGER,
    data_partida VARCHAR (10),
    fase VARCHAR (20),
    cod_torneio INTEGER,
    cod_lugar INTEGER,
    cod_arbitro INTEGER,
    PRIMARY KEY (cod_partida),
    FOREIGN KEY (cod_torneio) REFERENCES Torneio (cod_torneio),
    FOREIGN KEY (cod_lugar) REFERENCES Lugar (cod_lugar),
    FOREIGN KEY (cod_arbitro) REFERENCES Arbitro (cod_arbitro)
);

CREATE TABLE Part_Equip (
    cod_partida INTEGER,
    cod_equipe INTEGER,
    PRIMARY KEY (cod_partida, cod_equipe),
    FOREIGN KEY (cod_partida) REFERENCES Partida (cod_partida),
    FOREIGN KEY (cod_equipe) REFERENCES Equipe (cod_equipe)
);
