-- Garantir que a generalização é disjunta, não permitindo que uma pessoa possa ser enfermeira e utente simultaneamente
-- NOTA: Para uma pessoa ser considerada duplicada, é necessário ter o mesmo nome, email, telefone, genero e data de nascimento

CREATE TRIGGER AssertDisjointGeneralization
AFTER INSERT ON Utente
WHEN (SELECT NEW.nome, NEW.email, NEW.telefone, NEW.genero, NEW.dataNascimento) IN (SELECT nome, email, telefone, genero, dataNascimento FROM Enfermeiro)
BEGIN
    SELECT raise(abort, 'Inserção de um Utente que já é Enfermeiro');
END;
