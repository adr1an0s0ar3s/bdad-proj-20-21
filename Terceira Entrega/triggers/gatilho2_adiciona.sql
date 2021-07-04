-- Garantir que inicialmente toda encomenda gerada estará aguardando pagamento

CREATE TRIGGER CreateDefaultStateForOrder
AFTER INSERT ON Encomenda
BEGIN
    INSERT INTO Estado (encomendaID, dataAtualizacao, estado) VALUES (NEW.id, CURRENT_TIMESTAMP, 'aguarda pagamento');
END;
