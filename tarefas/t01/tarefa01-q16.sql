CREATE OR REPLACE VIEW view_gerentes AS
SELECT f.codigo, f.nome, f.salario, d.codigo AS cod_depto
FROM funcionario f
JOIN departamento d ON f.codigo = d.cod_gerente;

CREATE OR REPLACE VIEW view_salario_gerentes AS
SELECT d.codigo AS cod_depto, f.salario AS salario_gerente
FROM departamento d
JOIN funcionario f ON d.cod_gerente = f.codigo;

SELECT DISTINCT f.codigo, f.nome, f.salario,
       CASE
           WHEN EXISTS (SELECT 1 FROM departamento WHERE cod_gerente = f.codigo)
           THEN 'Gerente de Departamento'
           ELSE 'Ganha mais que o gerente'
       END AS tipo_responsavel
FROM projeto p
JOIN funcionario f ON p.cod_responsavel = f.codigo
LEFT JOIN departamento d ON f.cod_depto = d.codigo
LEFT JOIN view_salario_gerentes s ON d.codigo = s.cod_depto
WHERE 
    f.codigo IN (SELECT cod_gerente FROM departamento)
    OR
    (f.salario > COALESCE(s.salario_gerente, 0))
ORDER BY f.nome;