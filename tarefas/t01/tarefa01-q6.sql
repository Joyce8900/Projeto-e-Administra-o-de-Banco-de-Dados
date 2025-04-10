SELECT 
    f.nome AS nome_funcionario,
    f.salario,
    COALESCE(d.descricao, 'Sem departamento') AS descricao_departamento
FROM 
    funcionario f
LEFT JOIN 
    departamento d ON f.cod_depto = d.codigo
ORDER BY 
    f.nome;