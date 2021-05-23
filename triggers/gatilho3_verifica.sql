.mode columns
.headers ON
.nullvalue NULL

-- Inserção de uma encomenda
INSERT INTO Encomenda (id, vacinaID, centroID, custo, quantidade, dataEntregaPrevista) VALUES (6, 1, 1, 10.7, 5, '2021-12-01 11:00:00');
SELECT * FROM Encomenda;

-- Verificar quantidade da vacina Moderna no primeiro centro
SELECT quantidade FROM Stock WHERE vacinaID = 1 AND centroID = 1;

-- Inserção do estado "entregue" da encomenda inserida
INSERT INTO Estado (id, encomendaID, dataAtualizacao, estado) VALUES (7, 6, '2021-05-20 20:00:00', 'entregue');
SELECT * FROM Estado;

-- Verificar se a quantidade da vacina Moderna no primeiro centro subiu 5 valores
SELECT quantidade FROM Stock WHERE vacinaID = 1 AND centroID = 1;