-- Acrescentar stock em função das encomendas recebidas

CREATE TRIGGER AddStockWhenDeliveryArrives
AFTER INSERT ON Estado
WHEN new.estado = "entregue"
BEGIN
    UPDATE Stock SET quantidade = quantidade + (SELECT quantidade FROM Encomenda WHERE new.encomendaID = id)
    WHERE vacinaID = (SELECT vacinaID FROM Encomenda WHERE new.encomendaID = id);
END;