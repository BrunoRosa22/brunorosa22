/* ORGANIZANDO A CASA - DICIONARIO DE DADOS */
/* A33 - VERIFICANDO E ALTERANDO DADOS DE UMA TABELA */
CREATE TABLE TABELA(
	COLUNA1 VARCHAR(30),
	COLUNA2 VARCHAR(30),
	COLUNA3 VARCHAR(30)
);

/* ADICIONANDO UMA PK */
ALTER TABLE TABELA 
ADD PRIMARY KEY (COLUNA1);

--ADICIONANDO COLUNA SEM POSICAO. ULTIMA POSICAO
ALTER TABLE TABELA 
ADD COLUNA varchar(30);

ALTER TABLE TABELA 
ADD COLUNA100 INT;

--ADICIONANDO UMA COLUNA COM POSICAO
ALTER TABLE TABELA 
ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;

--MODIFICANDO O TIPO DE UM CAMPO
ALTER TABLE TABELA
 MODIFY COLUNA2 DATE NOT NULL;

--RENOMEANDO O NOME DA TABELA
ALTER TABLE TABELA 
RENAME PESSOA;

CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);

--Foreign key
ALTER TABLE TIME 
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

/* VERIFICAR AS CHAVES */
SHOW CREATE TABLE TIME;

/* ORGANIZANDO AS CHAVES */
CREATE TABLE JOGADOR(
			IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
			NOME VARCHAR(30)
);

CREATE TABLE TIMES(
			IDTIME INT PRIMARY KEY AUTO_INCREMENT,
			NOME VARCHAR(30),
			IDJOGADOR INT,
			FOREIGN KEY(IDJOGADOR)
			REFERENCES JOGADOR(IDJOGADOR)
);
INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);			

/*    */

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	IDCLIENTE INT
);
ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TEELFONE
FOREIGN KEY(IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE);

/* DICIONARIO DE DADOS */

SHOW DATABASES;

USE INFORMATION_SCHEMA;

STATUS

SHOW TABLES;

DESC TABLE_CONSTRAINTS;

SELECT CONSTRAINT_SCHEMA AS "BANCO",
	   TABLE_NAME AS "TABELA",
	   CONSTRAINT_NAME AS "NOME REGRA",
	   CONSTRAINT_TYPE AS "TIPO"
	   FROM TABLE_CONSTRAINTS
	   WHERE CONSTRAINT_SCHEMA = 'COMERCIO';

/*36 E ACOES DE CONSTRAINTS 
-- CRIAR UM BD CHAMADO PROJETO

































