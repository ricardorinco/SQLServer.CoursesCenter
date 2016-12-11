/*
	Data.........: 20/09/2016
	Descrição....: Inserção de dados nas tabelas do projeto
	Arquivo......: 004 - Inserts.sql
	Autor........: Ricardo Rinco
*/

-- Selecionando a base de dados: CoursesCenter
USE CoursesCenter
GO

-- Inserindo dados na tabela: Tipo de Curso
INSERT INTO CourseType (Identification)
VALUES ('Introdutórios'),
('Banco de Dados'),
('Programação'),
('Infraestrutura'),
('Engenharia de Software'),
('Cálculo')
GO

-- Inserindo dados na tabela: Instrutor
INSERT INTO Instructor (Identification)
VALUES ('José da Silva Martins'),
('Juliana Pinheiros'),
('Robson de Souza'),
('Marlene Queiroz'),
('Fábio Prado'),
('Antônio Carlos'),
('Wellington Mendez'),
('Marco Bento'),
('Joaquim Silva'),
('André Gomes')
GO

-- Inserindo dados na tabela: Curso
INSERT INTO Course (Identification, Price, CourseTypeId, InstructorId)
VALUES ('Fundamentos em Análise e Desenvolvimento de Sistemas', 80.90, 1, 1),
('Introdução à Computação', 80.90, 1, 7),
('Introdução à Engenharia de Software', 80.90, 1, 2),
('Algorítmos', 80.90, 1, 2),
('Análise de Algorítmos', 80.90, 1, 2),
('Matemática Aplicada à Computação', 108.80, 6, 4),
('Probabilidade e Estatística', 80.90, 6, 4),
('Cálculo Numérico', 108.80, 6, 4),
('Cálculo I', 108.80, 6, 4),
('Cálculo II', 108.80, 6, 4),
('Cálculo III', 108.80, 6, 4),
('Lógica Matemática', 108.80, 6, 7),
('Banco de Dados I', 160.30, 2, 7),
('Banco de Dados II', 160.30, 2, 5),
('Estrutura de Dados I', 160.30, 2, 7),
('Estrutura de Dados II', 160.30, 2, 5),
('Linguagem de Programação I', 398.50, 3, 5),
('Linguagem de Programação II', 398.50, 3, 3),
('Linguagem de Programação III', 398.50, 3, 3),
('Linguagem de Programação IV', 398.50, 3, 5),
('Linguagem de Programação V', 398.50, 3, 5),
('Programação WEB I', 398.50, 3, 3),
('Programação WEB II', 398.50, 3, 5),
('Programação WEB III', 398.50, 3, 5),
('Programação de Computadores I', 398.50, 3, 3),
('Programação de Computadores II', 398.50, 3, 5),
('Programação de Computadores III', 398.50, 3, 5),
('Programação de Computadores IV', 398.50, 3, 5),
('Paradigmas de Linguagens de Programação', 398.50, 3, 5),
('Redes de Computadores', 250.90, 4, 6),
('Administração e Segurança de Redes', 250.90, 4, 6),
('Arquitetura e Organização de Computadores', 250.90, 4, 6),
('Sistemas Distribuídos', 250.90, 4, 7),
('Sistemas Operacionais', 250.90, 4, 6),
('Interação Humano-Computador', 250.90, 4, 1),
('Compiladores', 250.90, 4, 8),
('Inteligência Artificial', 250.90, 4, 8),
('Multimídia e Computação Gráfica', 250.90, 4, 8),
('Teoria da Computação I', 250.90, 4, 8),
('Teoria da Computação II', 250.90, 4, 8),
('Gestão de Tecnologia de Informação', 530.10, 5, 2),
('Engenharia de Software I', 530.10, 5, 7),
('Engenharia de Software II', 530.10, 5, 7),
('Qualidade e Auditoria de Software', 530.10, 5, 2),
('Gestão de Projetos', 530.10, 5, 1)