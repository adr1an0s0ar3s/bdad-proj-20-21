.mode columns
.headers ON
.nullvalue NULL

-- Laboratórios que não produzem vacinas para todos os vírus
SELECT nome
FROM Laboratorio AS L
WHERE NOT EXISTS(
    SELECT Vacina.id
    FROM Vacina
    EXCEPT
    SELECT DISTINCT Fabricante.vacinaID
    FROM Laboratorio, Fabricante
    WHERE L.id = Fabricante.laboratorioID
);