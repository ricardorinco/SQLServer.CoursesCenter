/*
	Data.........: 28/08/2016
	Descri��o....: Cria��o das tabelas do projeto
	Arquivo......: 003 - Tables.sql
	Autor........: Ricardo Rinco
*/

-- Selecionando a base de dados: CoursesCenter
USE CoursesCenter
GO

-- Criando a tabela: Tipo de Curso
CREATE TABLE CourseType (
	Id INTEGER NOT NULL IDENTITY(1, 1), -- C�digo de identifica��o interno
	Identification VARCHAR(50) NOT NULL, -- Identifica��o do Tipo de Curso

	CONSTRAINT pk_CourseTypeId PRIMARY KEY(Id) -- Define o campo Id como chave prim�ria
)
GO

-- Criando a tabela: Instrutor
CREATE TABLE Instructor (
	Id INTEGER NOT NULL IDENTITY (1, 1), -- C�digo de identifica��o interno
	Identification VARCHAR(50), -- Identifica��o do Instrutor

	CONSTRAINT pk_InstructorId PRIMARY KEY(Id) -- Define o campo Id como chave prim�ria
)
GO

-- Criando a tabela: Curso
CREATE TABLE Course (
	Id INTEGER NOT NULL IDENTITY(1, 1), -- C�digo de identifica��o interno
	Identification VARCHAR(100) NOT NULL, -- Identifica��o do Curso
	Price MONEY NOT NULL, -- Valor do curso
	CourseTypeId INTEGER NOT NULL, -- Id do Tipo de Curso
	InstructorId INTEGER NOT NULL, -- Id do Instrutor

	CONSTRAINT pk_CourseId PRIMARY KEY (Id), -- Define o campo Id como chave prim�ria

	CONSTRAINT fk_Course_CourseTypeId FOREIGN KEY(CourseTypeId) REFERENCES CourseType(Id), -- Cria o relacionamento (chave estrangeira) com a tabela Tipo de Curso
	CONSTRAINT fk_Course_InstructorId FOREIGN KEY(InstructorId) REFERENCES Instructor(Id) -- Cria o relacionamento (chave estrangeira) com a tabela Instrutor
)
GO

-- Criando a tabela: Aluno
CREATE TABLE Student (
	Id INTEGER NOT NULL IDENTITY(1, 1), -- C�digo de identifica��o interno
	Identification VARCHAR(100) NOT NULL, -- Identifica��o do Aluno
	BirthDate DATE NOT NULL, -- Data de Anivers�rio do Aluno
	Email VARCHAR(128) NOT NULL, -- E-mail do Aluno
	Registration INTEGER NOT NULL, -- N�mero da matr�cula do Aluno

	CONSTRAINT pk_StudentId PRIMARY KEY(Id) -- Define o campo Id como chave prim�ria
)
GO

-- Cria��o da tabela: Pedido
CREATE TABLE Request (
	Id INTEGER NOT NULL IDENTITY(1, 1), -- C�digo de identifica��o interno
	RequestDateTime DATETIME DEFAULT SYSDATETIME(), -- Data e hora do Pedido
    StudentId INTEGER NOT NULL, -- Id do Aluno
	
	CONSTRAINT pk_RequestId PRIMARY KEY(Id), -- Define o campo Id como chave prim�ria
    CONSTRAINT fk_Request_StudentId FOREIGN KEY(StudentId) REFERENCES Student(Id), -- Cria o relacionamento (chave estrangeira) com a tabela Aluno
)
GO

-- Cria��o da tabela: Detalhes do Pedido
CREATE TABLE RequestDetail (
	Id INTEGER NOT NULL IDENTITY(1, 1), -- C�digo de identifica��o interno
	RequestId INTEGER NOT NULL, -- Id do Pedido
	CourseId INTEGER NOT NULL, -- Id do Curso
	
	CONSTRAINT pk_RequestDetailsId PRIMARY KEY(Id), -- Define o campo Id como chave prim�ria
    CONSTRAINT fk_Request_RequestId FOREIGN KEY(RequestId) REFERENCES Request(Id), -- Cria o relacionamento (chave estrangeira) com a tabela Pedido
	CONSTRAINT fk_Request_CourseId FOREIGN KEY(CourseId) REFERENCES Course(Id) -- Cria o relacionamento (chave estrangeira) com a tabela Curso
)