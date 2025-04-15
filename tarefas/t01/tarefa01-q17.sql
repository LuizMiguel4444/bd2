SELECT p.codigo, p.descricao
FROM projeto p
JOIN departamento d ON p.cod_depto = d.codigo
JOIN funcionario f ON d.cod_gerente = f.codigo
WHERE f.salario = (
    SELECT MAX(f2.salario)
    FROM departamento d2
    JOIN funcionario f2 ON d2.cod_gerente = f2.codigo
);
