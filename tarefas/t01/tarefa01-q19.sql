WITH 
media_salarios_gerentes AS (
    SELECT AVG(salario) AS media_salario
    FROM funcionario
    WHERE codigo IN (SELECT cod_gerente FROM departamento)
),

gerentes_acima_media AS (
    SELECT f.codigo, f.salario
    FROM funcionario f
    JOIN departamento d ON f.codigo = d.cod_gerente
    WHERE f.salario > (SELECT media_salario FROM media_salarios_gerentes)
)

SELECT p.codigo, p.descricao
FROM projeto p
JOIN departamento d ON p.cod_responsavel = d.cod_gerente
JOIN gerentes_acima_media gam ON d.cod_gerente = gam.codigo;