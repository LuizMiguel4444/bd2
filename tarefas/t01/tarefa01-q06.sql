SELECT
    f.nome,
    f.salario,
    d.descricao AS departamento
FROM
    funcionario f
LEFT JOIN
    departamento d ON f.cod_depto = d.codigo;
