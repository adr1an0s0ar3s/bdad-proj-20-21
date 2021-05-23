.mode columns
.headers ON
.nullvalue NULL

-- Inserção de uma nova encomenda
INSERT INTO Encomenda (vacinaID, centroID, custo, quantidade, dataEntregaPrevista) VALUES (1, 3, 54.2, 2, '2021-06-18 09:12:00');
SELECT * FROM Encomenda;

-- Verifica estado da encomenda
SELECT * FROM Estado, Encomenda WHERE Estado.encomendaID = Encomenda.id AND Estado.estado = 'aguarda pagamento';
