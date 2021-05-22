SELECT Vacina.*, Centro.email, JulianDay(Estado.dataAtualizacao) from Vacina, Encomenda, Estado, Centro
WHERE Estado.estado = 'entregue'
AND Encomenda.id = Estado.encomendaID
AND Centro.id = Encomenda.centroID
AND Vacina.id = Encomenda.vacinaID 
AND ((JulianDay(Estado.dataAtualizacao) * 24) + JulianDay(Vacina.tempoConservacao)) < ((JulianDay('now') * 24))