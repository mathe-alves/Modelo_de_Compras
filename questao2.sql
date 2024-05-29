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
