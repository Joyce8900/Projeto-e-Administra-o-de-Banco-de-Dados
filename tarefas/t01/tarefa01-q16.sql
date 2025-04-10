WITH salario_maximo_gerente AS (
    SELECT MAX(f.salario) AS max_salario
    FROM funcionario f
    JOIN departamento d ON f.codigo = d.cod_gerente
)

SELECT p.codigo, p.descricao
FROM projeto p
JOIN funcionario resp ON p.cod_responsavel = resp.codigo
JOIN departamento d ON resp.cod_depto = d.codigo
JOIN funcionario gerente ON d.cod_gerente = gerente.codigo
WHERE gerente.salario = (SELECT max_salario FROM salario_maximo_gerente);