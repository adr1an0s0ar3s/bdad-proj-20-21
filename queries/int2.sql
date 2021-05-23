.mode columns
.headers ON
.nullvalue NULL

-- Número de pessoas por morada
SELECT Morada.id, codigoPostal, numeroPorta, infoExtra, count() AS nr_pessoas
FROM Morada JOIN (SELECT moradaID FROM Enfermeiro UNION ALL SELECT moradaID FROM Utente) ON id = moradaID
GROUP BY moradaID;