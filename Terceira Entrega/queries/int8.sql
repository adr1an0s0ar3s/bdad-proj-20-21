.mode columns
.headers ON
.nullvalue NULL

-- Laboratórios que não produzem vacinas para todos os vírus
SELECT nome
FROM Laboratorio AS L
WHERE NOT EXISTS(
    SELECT Virus.id
    FROM Virus
    EXCEPT
    SELECT DISTINCT virusID
    FROM Fabricante JOIN Vacina ON Fabricante.vacinaID = Vacina.id
    WHERE L.id = Fabricante.laboratorioID
);