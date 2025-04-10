SELECT 
    p.nome AS nome_projeto,
    a.data_inicio AS inicio_projeto,
    a.data_fim AS fim_projeto,
    ativ.descricao AS descricao_atividade,
    ativ.data_inicio AS inicio_atividade,
    ativ.data_fim AS fim_atividade
FROM 
    projeto p
JOIN 
    atividade_projeto ap ON p.codigo = ap.cod_projeto
JOIN 
    atividade ativ ON ap.cod_atividade = ativ.codigo
JOIN
    atividade a ON p.codigo = a.cod_responsavel  -
ORDER BY 
    p.nome, ativ.data_inicio;