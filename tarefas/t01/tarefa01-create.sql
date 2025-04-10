 create table atividade (
	codigo int primary key,
	nome varchar(50),
	descricao varchar(50),
	cod_responsavel int,
	data_inicio date,
	data_fim date
)

create table departamento (
	codigo int primary key,
	descricao varchar(50),
	cod_gerente int,
	FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)
)

create table projeto (
	codigo int primary key,
	nome varchar(50),
	descricao varchar(50),
	cod_depto int,
	cod_responsavel int,
	data_inicio date,
	data_fim date
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
)

create table funcionario (
	codigo int primary key,	
	nome varchar(50) not null,
	sexo char(1),
	dt_nasc date,
	salario float,
	cod_depto int,
)
ALTER TABLE funcionario
ADD FOREIGN KEY (cod_depto) REFERENCES departamento(codigo);




