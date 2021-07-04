.mode columns
.headers ON
.nullvalue NULL

-- Vacinas vencidas de um determinado centro: Data de Entrega + Tempo de Conversação superior ao dia de hoje
SELECT Vacina.*, Centro.email, Estado.dataAtualizacao
FROM Vacina, Encomenda, Estado, Centro
WHERE 
    Estado.estado = 'entregue'
    AND Encomenda.id = Estado.encomendaID
    AND Centro.id = Encomenda.centroID
    AND Vacina.id = Encomenda.vacinaID 
    AND (strftime("%s", Estado.dataAtualizacao)/3600 + Vacina.tempoConservacao) < (strftime("%s", "now")/3600);