insert into atividade_projeto (cod_projeto, cod_atividade, cod_responsavel) values(01, 01, 01),   
(02, 02, 02),   
(03, 03, 03),   
(04, 04, 04),   
(05, 05, 05)

insert into projeto (codigo, nome, descricao, cod_responsavel) values(01, 'Projeto 1', 'Descrição 1', 01),
(02, 'Projeto 2', 'Descrição 2', 02),
(03, 'Projeto 3', 'Descrição 3', 03),  
(04, 'Projeto 4', 'Descrição 4', 04),  
(05, 'Projeto 5', 'Descrição 5', 05)

insert into atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) values(01, 'Atividade 1', 'Descrição 1', 01, '2022-05-28', '2026-05-28'),
(02, 'Atividade 2', 'Descrição 2', 02, '2022-05-28', '2026-05-28'),
(03, 'Atividade 3', 'Descrição 3', 03, '2022-05-28', '2026-05-28'),
(04, 'Atividade 4', 'Descrição 4', 04, '2022-05-28', '2026-05-28'),
(05, 'Atividade 5', 'Descrição 5', 05, '2022-05-28', '2026-05-28')


insert into departamento (codigo, descricao, cod_gerente) values(01, 'TI', 01),
(02, 'RH', 02),
(03, 'Vendas', 03),
(04, 'Marketing', 04),  
(05, 'Comercial', 05)


insert into funcionario (codigo, nome, sexo, dt_nasc, salario, cod_depto) values(01, 'Joyce', 'F', '2002-05-28', 2500, 01),
(02, 'Eduardo', 'M', '2001-05-28', 1500, 02),
(03, 'Thiago', 'M', '2000-05-28', 1500, 03),
(04, 'Luis', 'M', '1999-05-28', 1500, 04),
(05, 'Lucas', 'M', '1998-05-28', 1500, 05),
