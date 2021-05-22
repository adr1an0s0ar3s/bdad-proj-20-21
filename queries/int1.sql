.mode columns
.headers ON
.nullvalue NULL

-- Número de vacinas produzidas pelo laboratório 'APRLabs'
SELECT nome AS laboratorioNome, COUNT(*) AS nrVacinas
FROM Laboratorio JOIN Fabricante
WHERE id = laboratorioID AND Laboratorio.nome = 'APRLabs';
