#Criar uma nova tabela para armazenar o preço e status dos itens no final do dia
DELIMITER $$

CREATE PROCEDURE AtualizarItemStatusDiario()
BEGIN
    INSERT INTO ItemStatusDiario (Cod_produto, Data, Preco, Status)
    SELECT 
        Cod_produto,
        CURDATE() AS Data,
        Preco,
        Status
    FROM 
        Produto;
END$$

DELIMITER ;

-- Executar a procedure para atualizar o status diário dos itens
CALL AtualizarItemStatusDiario();
