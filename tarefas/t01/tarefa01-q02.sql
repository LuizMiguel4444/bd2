SELECT nome FROM funcionario WHERE dt_nasc > (
    SELECT MIN(dt_nasc) FROM funcionario
);
