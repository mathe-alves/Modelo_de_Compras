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
