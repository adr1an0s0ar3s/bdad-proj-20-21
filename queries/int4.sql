.mode columns
.headers ON
.nullvalue NULL

-- Média de vacinas em stock por centro
SELECT centroID, AVG(quantidade) AS avgStock
FROM Stock GROUP BY centroID;
