INSERT
INTO Torneio
VALUES (1, 'Amador', 2022, 'Brasil');

INSERT
INTO Lugar
VALUES (110, 'São Paulo', 12000, 'Ginásio Ibirapuera');
INSERT
INTO Lugar
VALUES (220, 'Fortaleza', 8000, 'Ginásio Paulo Sarasate');
INSERT
INTO Lugar
VALUES (330, 'Rio de Janeiro', 4000, 'Maracanãzinho');

INSERT
INTO Arbitro
VALUES (1120, 'Nikolai', 'Rússia');
INSERT
INTO Arbitro
VALUES (2230, 'Josh', 'EUA');
INSERT
INTO Arbitro
VALUES (3340, 'Romero', 'Itália');

INSERT
INTO Jogador
VALUES (112230, 'Silva', 19, 'D');
INSERT
INTO Jogador
VALUES (223340, 'Messi', 21, 'D');
INSERT
INTO Jogador
VALUES (334450, 'Sanchez', 22, 'E');
INSERT
INTO Jogador
VALUES (445560, 'Higuito', 24, 'D');

INSERT
INTO Treinador
VALUES (1122330, 'Pereira', 51);
INSERT
INTO Treinador
VALUES (2233440, 'Maradona', 47);
INSERT
INTO Treinador
VALUES (3344550, 'Suarez', 55);
INSERT
INTO Treinador
VALUES (4455660, 'Ramon', 53);

INSERT
INTO Equipe
VALUES (11220, 1, 123, 'Paulistano', 'Brasil', 112230, 1122330);
INSERT
INTO Equipe
VALUES (22330, 1, 115, 'La Plata', 'Argentina', 223340, 2233440);
INSERT
INTO Equipe
VALUES (33440, 1, 108, 'Danubio', 'Uruguai', 334450, 3344550);
INSERT
INTO Equipe
VALUES (44550, 1, 97, 'Olimpia', 'Paraguai', 445560, 4455660);

INSERT
INTO Partida
VALUES (10, '07/07', 'Semi-final', 1, 110, 1120);
INSERT
INTO Partida
VALUES (20, '14/07', 'Semi-final', 1, 220, 2230);
INSERT
INTO Partida
VALUES (30, '21/07', 'Final', 1, 330, 3340);

INSERT
INTO Part_Equip
VALUES (10, 11220);
INSERT
INTO Part_Equip
VALUES (10, 44550);
INSERT
INTO Part_Equip
VALUES (20, 22330);
INSERT
INTO Part_Equip
VALUES (20, 33440);
INSERT
INTO Part_Equip
VALUES (30, 11220);
INSERT
INTO Part_Equip
VALUES (30, 22330);


SELECT * FROM Torneio;
SELECT * FROM Partida;
SELECT * FROM Lugar;
SELECT * FROM Arbitro;
SELECT * FROM Equipe;
SELECT * FROM Jogador;
SELECT * FROM Treinador;
SELECT * FROM Part_Equip;
