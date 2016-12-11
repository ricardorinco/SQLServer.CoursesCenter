/*
	Data.........: 20/09/2016
	Descri��o....: Inser��o de dados nas tabelas do projeto
	Arquivo......: 004 - Inserts.sql
	Autor........: Ricardo Rinco
*/

-- Selecionando a base de dados: CoursesCenter
USE CoursesCenter
GO

-- Inserindo dados na tabela: Tipo de Curso
INSERT INTO CourseType (Identification)
VALUES ('Introdut�rios'),
('Banco de Dados'),
('Programa��o'),
('Infraestrutura'),
('Engenharia de Software'),
('C�lculo')
GO

-- Inserindo dados na tabela: Instrutor
INSERT INTO Instructor (Identification)
VALUES ('Jos� da Silva Martins'),
('Juliana Pinheiros'),
('Robson de Souza'),
('Marlene Queiroz'),
('F�bio Prado'),
('Ant�nio Carlos'),
('Wellington Mendez'),
('Marco Bento'),
('Joaquim Silva'),
('Andr� Gomes')
GO

-- Inserindo dados na tabela: Curso
INSERT INTO Course (Identification, Price, CourseTypeId, InstructorId)
VALUES ('Fundamentos em An�lise e Desenvolvimento de Sistemas', 80.90, 1, 1),
('Introdu��o � Computa��o', 80.90, 1, 7),
('Introdu��o � Engenharia de Software', 80.90, 1, 2),
('Algor�tmos', 80.90, 1, 2),
('An�lise de Algor�tmos', 80.90, 1, 2),
('Matem�tica Aplicada � Computa��o', 108.80, 6, 4),
('Probabilidade e Estat�stica', 80.90, 6, 4),
('C�lculo Num�rico', 108.80, 6, 4),
('C�lculo I', 108.80, 6, 4),
('C�lculo II', 108.80, 6, 4),
('C�lculo III', 108.80, 6, 4),
('L�gica Matem�tica', 108.80, 6, 7),
('Banco de Dados I', 160.30, 2, 7),
('Banco de Dados II', 160.30, 2, 5),
('Estrutura de Dados I', 160.30, 2, 7),
('Estrutura de Dados II', 160.30, 2, 5),
('Linguagem de Programa��o I', 398.50, 3, 5),
('Linguagem de Programa��o II', 398.50, 3, 3),
('Linguagem de Programa��o III', 398.50, 3, 3),
('Linguagem de Programa��o IV', 398.50, 3, 5),
('Linguagem de Programa��o V', 398.50, 3, 5),
('Programa��o WEB I', 398.50, 3, 3),
('Programa��o WEB II', 398.50, 3, 5),
('Programa��o WEB III', 398.50, 3, 5),
('Programa��o de Computadores I', 398.50, 3, 3),
('Programa��o de Computadores II', 398.50, 3, 5),
('Programa��o de Computadores III', 398.50, 3, 5),
('Programa��o de Computadores IV', 398.50, 3, 5),
('Paradigmas de Linguagens de Programa��o', 398.50, 3, 5),
('Redes de Computadores', 250.90, 4, 6),
('Administra��o e Seguran�a de Redes', 250.90, 4, 6),
('Arquitetura e Organiza��o de Computadores', 250.90, 4, 6),
('Sistemas Distribu�dos', 250.90, 4, 7),
('Sistemas Operacionais', 250.90, 4, 6),
('Intera��o Humano-Computador', 250.90, 4, 1),
('Compiladores', 250.90, 4, 8),
('Intelig�ncia Artificial', 250.90, 4, 8),
('Multim�dia e Computa��o Gr�fica', 250.90, 4, 8),
('Teoria da Computa��o I', 250.90, 4, 8),
('Teoria da Computa��o II', 250.90, 4, 8),
('Gest�o de Tecnologia de Informa��o', 530.10, 5, 2),
('Engenharia de Software I', 530.10, 5, 7),
('Engenharia de Software II', 530.10, 5, 7),
('Qualidade e Auditoria de Software', 530.10, 5, 2),
('Gest�o de Projetos', 530.10, 5, 1)