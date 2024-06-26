DROP TABLE Func_Proj
;

DROP TABLE Projeto
;

DROP TABLE Funcionario
;

DROP TABLE Departamento
;

CREATE TABLE Departamento 
(Cod_Depto INTEGER, 
Nome_Depto VARCHAR(20)NOT NULL, 
PRIMARY KEY(Cod_Depto) 
)
;

CREATE TABLE Funcionario 
(Cod_Func INTEGER, 
Nome_Func VARCHAR(20) NOT NULL, 
Salario INTEGER, 
Cod_Depto INTEGER, 
PRIMARY KEY(Cod_Func), 
FOREIGN KEY (Cod_Depto) REFERENCES Departamento (Cod_Depto) 
)
;

CREATE TABLE Projeto 
(Cod_Proj INTEGER, 
Nome_Proj VARCHAR(20) NOT NULL, 
Duracao INTEGER, 
PRIMARY KEY(Cod_Proj) 
)
;

CREATE TABLE Func_Proj 
(Cod_Func INTEGER, 
Cod_Proj INTEGER, 
Horas_Trab INTEGER, 
PRIMARY KEY(Cod_Func, Cod_Proj), 
FOREIGN KEY (Cod_Func) REFERENCES Funcionario(Cod_Func), 
FOREIGN KEY (Cod_Proj) REFERENCES Projeto(Cod_Proj) 
)
;
