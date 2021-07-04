.mode columns
.headers ON
.nullvalue NULL

-- Contactos das vacinas já aplicadas por centro a um utente
SELECT Contacto.*, Utente.nome, Vacina.nome, Centro.email
FROM Contacto, Utente, Vacina, Centro
WHERE  
    JulianDay(Contacto.dataComparecimento) < JulianDay('now')
    AND Utente.id = Contacto.utenteID
    AND Vacina.id = Contacto.vacinaID
    AND Centro.id = Utente.centroID