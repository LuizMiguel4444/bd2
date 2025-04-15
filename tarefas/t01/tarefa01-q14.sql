CREATE VIEW vw_atividades_responsaveis AS
SELECT
    a.cod_responsavel,
    f.nome AS nome_funcionario
FROM
    atividade a
JOIN
    funcionario f ON a.cod_responsavel = f.codigo;

SELECT
    nome_funcionario,
    COUNT(*) AS qtd_atividades
FROM
    vw_atividades_responsaveis
GROUP BY
    nome_funcionario;
