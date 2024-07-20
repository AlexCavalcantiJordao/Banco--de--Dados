create database teste01 on primary
(name = teste01,
filename = 'C:\SQL\teste01.mdf',
size = 6mb,
maxsize = 15mb,
filegrowth = 10%)

log on(
name = teste01_log,
filename = 'C:\SQL\teste01.ldf',
size = 1 mb,
filegrowth = 1mb)
go
;

-- Consultar bancos existentes...
select name
from master.sys.databases
order by name;

exec sp_databases;

-- Selecionar banco a usar...
use teste01;

-- Obter informações sobre um banco de dados especifico...
exec sp_helpdb teste01;

-- Excluir banco de Dados...
drop database teste01;

-- Excluir banco de dados em uso...
use master
go
alter database teste01 set single_user with rollback immediate
drop database teste01;