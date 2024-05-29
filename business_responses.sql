#Liste usuários com aniversário de hoje cujo número de vendas realizadas em janeiro de 2020 seja superior a 1.500
SELECT 
    c.Nome,
    c.nascimento,
    SUM(v.Valor_total) AS total_vendas
FROM 
    Vendedor c
JOIN 
    Pedido p ON c.Cod_vendedor = p.Cod_cliente
JOIN 
    Item i ON p.Cod_pedido = i.Cod_pedido
JOIN 
    Venda v ON i.Cod_produto = v.Cod_produto
WHERE v.Data_venda BETWEEN '2020-01-01' AND '2024-05-31'
GROUP BY 
    c.Cod_vendedor
HAVING 
    total_vendas > 1500;

#Para cada mês de 2020, os 5 principais usuários que mais venderam ($) na categoria Celulares
SELECT 
    MONTH(v.Data_venda) AS mes,
    YEAR(v.Data_venda) AS ano,
    v.Cod_vendedor,
    vd.Nome,
    vd.sobrenome,
    COUNT(v.Cod_venda) AS quantidade_vendas,
    SUM(v.Quantidade) AS quantidade_produtos_vendidos,
    SUM(v.Valor_total) AS valor_total_transacionado
FROM 
    Venda v
JOIN 
    Vendedor vd ON v.Cod_vendedor = vd.Cod_vendedor
JOIN 
    Produto p ON v.Cod_produto = p.Cod_produto
JOIN 
    Categoria c ON p.Categoria_id = c.Categoria_id
WHERE 
    YEAR(v.Data_venda) = 2020
    AND c.Categoria = 'Celulares'
GROUP BY 
    mes, ano, v.Cod_vendedor, vd.Nome, vd.sobrenome
ORDER BY 
    mes, ano, valor_total_transacionado DESC;
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
