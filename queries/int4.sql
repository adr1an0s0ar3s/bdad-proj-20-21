.mode columns
.headers ON
.nullvalue NULL

-- Média de vacinas em Stock por Centro
SELECT centroID, AVG(quantidade) AS avgStock
FROM Stock GROUP BY centroID;
