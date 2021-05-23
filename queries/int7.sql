.mode columns
.headers ON
.nullvalue NULL

-- Vacinas que estão mais próximas de vencer
SELECT Vacina.id, nome, tempoConservacao, Estado.dataAtualizacao AS dataEntrega, (strftime("%s", Estado.dataAtualizacao)/3600+tempoConservacao-strftime("%s", "now")/3600) AS timeLeft
FROM Vacina, Encomenda, Estado
WHERE Vacina.id = vacinaID AND Encomenda.id = EncomendaID AND estado = "entregue" AND (strftime("%s", Estado.dataAtualizacao)/3600+tempoConservacao) > strftime("%s", "now")/3600
ORDER BY timeLeft ASC;