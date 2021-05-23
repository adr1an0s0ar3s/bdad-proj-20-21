.mode columns
.headers ON
.nullvalue NULL

-- Utentes que não foram contactos para receberem nenhuma vacina
SELECT Utente.* 
FROM Utente LEFT JOIN Contacto ON Contacto.utenteID = Utente.id
WHERE Contacto.utenteID IS NULL
ORDER BY Utente.prioridade DESC, Utente.dataNascimento ASC;