/*
	Data.........: 26/09/2015
	Descri��o....: Cria��o da base de dados
	Arquivo......: 002 - Database.sql
	Autor........: Ricardo Rinco
*/

-- Cria��o da base de dados: CoursesCenter.mdf
CREATE DATABASE CoursesCenter ON PRIMARY (
	NAME = N'CoursesCenter_Data',
	FILENAME = N'C:\CoursesCenter\Data\CoursesCenter.mdf'
)