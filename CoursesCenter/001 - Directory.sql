/*
	Data.........: 26/09/2015
	Descri��o....: Cria��o do diret�rio padr�o
	Arquivo......: 001 - Directory.sql
	Autor........: Ricardo Rinco
*/

-- Criando o diret�rio padr�o
declare @chkdirectory as nvarchar(4000)
declare @folder_exists as int
 
set @chkdirectory = 'C:\CoursesCenter\Data'

declare @file_results table (
	file_exists int,
	file_is_a_directory int,
	parent_directory_exists int)

insert into @file_results (
	file_exists, file_is_a_directory, parent_directory_exists
)
exec master.dbo.xp_fileexist @chkdirectory
 
select @folder_exists = file_is_a_directory
  from @file_results
 
-- Script de cria��o do diret�rio
if @folder_exists = 0
 begin
    print 'O diret�rio n�o existe, criando um novo diret�rio.'
    EXECUTE master.dbo.xp_create_subdir @chkdirectory
    print @chkdirectory +  ' foi criado em: ' + @@servername
	print 'Diret�rio criado com sucesso.'
 end       
else
print 'O diret�rio j� existe.'