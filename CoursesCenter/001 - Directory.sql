/*
	Data.........: 26/09/2015
	Descrição....: Criação do diretório padrão
	Arquivo......: 001 - Directory.sql
	Autor........: Ricardo Rinco
*/

-- Criando o diretório padrão
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
 
-- Script de criação do diretório
if @folder_exists = 0
 begin
    print 'O diretório não existe, criando um novo diretório.'
    EXECUTE master.dbo.xp_create_subdir @chkdirectory
    print @chkdirectory +  ' foi criado em: ' + @@servername
	print 'Diretório criado com sucesso.'
 end       
else
print 'O diretório já existe.'