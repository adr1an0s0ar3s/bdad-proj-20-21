.mode columns
.headers ON
.nullvalue NULL

-- Fabricante com vacinas mais vendidas, i.e. mais encomendas geradas, e respetiva quantidade de vendas
SELECT nome AS laboratorioNome, nrVendasTotal
FROM (
    SELECT vacinaID, MAX(quantidadeTotal) AS nrVendasTotal
    FROM (
        SELECT vacinaID, SUM(quantidade) AS quantidadeTotal
        FROM Encomenda
        GROUP BY vacinaID
    )
) JOIN Fabricante USING(vacinaID) JOIN Laboratorio
WHERE laboratorioID = id;
