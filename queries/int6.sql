.mode columns
.headers ON
.nullvalue NULL

-- Encomendas entregues mais recentes dos centros
SELECT Encomenda.id, Vacina.nome, custo, quantidade, Estado.dataAtualizacao AS dataEntrega, email
FROM Estado, Encomenda, Vacina, Centro
WHERE encomendaID = Encomenda.id AND vacinaID = Vacina.id AND centroID = Centro.id AND estado = "entregue"
ORDER BY strftime("%s", dataEntrega) DESC;