INSERT INTO Cliente (Cod_cliente, Nome, sexo, nascimento) VALUES
(1, 'João Silva', 'M', '1990-05-29'),
(2, 'Maria Oliveira', 'F', '1985-06-15'),
(3, 'Pedro Souza', 'M', '1978-12-10'),
(4, 'Ana Santos', 'F', '1995-07-22'),
(5, 'Lucas Pereira', 'M', '1988-03-19'),
(6, 'Laura Lima', 'F', '1992-01-30'),
(7, 'Carlos Costa', 'M', '1981-11-11'),
(8, 'Mariana Almeida', 'F', '1994-02-25'),
(9, 'Bruno Ferreira', 'M', '1987-09-03'),
(10, 'Beatriz Ribeiro', 'F', '1993-04-17');
INSERT INTO Vendedor (Cod_vendedor, E_mail, Nome, sobrenome, nascimento, sexo) VALUES
(1, 'joao@vendas.com', 'João', 'Lima', '2024-05-29', 'M'),
(2, 'maria@vendas.com', 'Maria', 'Fernandes', '1990-08-12', 'F'),
(3, 'pedro@vendas.com', 'Pedro', 'Gomes', '1982-07-15', 'M'),
(4, 'ana@vendas.com', 'Ana', 'Rodrigues', '1988-09-30', 'F'),
(5, 'lucas@vendas.com', 'Lucas', 'Martins', '2000-11-05', 'M'),
(6, 'laura@vendas.com', 'Laura', 'Silva', '2024-03-22', 'F'),
(7, 'carlos@vendas.com', 'Carlos', 'Oliveira', '2024-01-18', 'M'),
(8, 'mariana@vendas.com', 'Mariana', 'Santos', '1993-06-10', 'F'),
(9, 'bruno@vendas.com', 'Bruno', 'Barbosa', '2023-12-05', 'M'),
(10, 'beatriz@vendas.com', 'Beatriz', 'Almeida', '2024-04-08', 'F');
INSERT INTO Categoria (Categoria_id, Caminho, Descricao, Categoria) VALUES
(1, 'Tecnologia>Celulares e Telefonias>Celulares e Smartphones', 'Celulares e Smartphones', 'Celulares'),
(2, 'Tecnologia>Informática>Notebooks', 'Notebooks', 'Notebooks'),
(3, 'Eletrodomésticos>Cozinha>Geladeiras', 'Geladeiras', 'Geladeiras'),
(4, 'Moda>Roupas Masculinas>Camisas', 'Camisas Masculinas', 'Camisas'),
(5, 'Moda>Roupas Femininas>Vestidos', 'Vestidos Femininos', 'Vestidos'),
(6, 'Esportes e Fitness>Academia>Haltere', 'Haltere', 'Haltere'),
(7, 'Livros>Literatura Brasileira>Romances', 'Romances Brasileiros', 'Romances'),
(8, 'Móveis>Sala de Estar>Sofás', 'Sofás', 'Sofás'),
(9, 'Beleza e Saúde>Cuidados com a Pele>Cremes', 'Cremes para Pele', 'Cremes'),
(10, 'Automotivo>Acessórios para Veículos>Capas para Carro', 'Capas de Carro', 'Capas');
INSERT INTO Produto (Cod_produto, Nome_produto, Descricao, Preco, Data_publicacao, Data_cancelamento, Status, Cod_vendedor, Categoria_id) VALUES
(1, 'iPhone 12', 'Smartphone Apple iPhone 12', 3999.99, '2023-01-01', NULL, 'Ativo', 1, 1),
(2, 'Samsung Galaxy S21', 'Smartphone Samsung Galaxy S21', 2999.99, '2023-01-02', NULL, 'Ativo', 2, 2),
(3, 'Notebook Dell XPS 13', 'Notebook Dell XPS 13', 7999.99, '2023-01-03', NULL, 'Ativo', 3, 3),
(4, 'Geladeira Brastemp', 'Geladeira Brastemp Frost Free', 2199.99, '2023-01-04', NULL, 'Ativo', 4, 4),
(5, 'Camisa Polo', 'Camisa Polo Masculina', 99.99, '2023-01-05', NULL, 'Ativo', 5, 5),
(6, 'Vestido Floral', 'Vestido Floral Feminino', 149.99, '2023-01-06', NULL, 'Ativo', 6, 6),
(7, 'Haltere 10kg', 'Haltere de 10kg', 49.99, '2023-01-07', NULL, 'Ativo', 7, 7),
(8, 'Romance Brasileiro', 'Livro Romance Brasileiro', 29.99, '2023-01-08', NULL, 'Ativo', 8, 8),
(9, 'Sofá 3 Lugares', 'Sofá 3 Lugares Confortável', 999.99, '2023-01-09', NULL, 'Ativo', 9, 9),
(10, 'Creme Anti-idade', 'Creme Anti-idade para Rosto', 79.99, '2023-01-10', NULL, 'Ativo', 10, 10);
INSERT INTO Pedido (Cod_pedido, Data, Valor_pedido, Cod_cliente) VALUES
(1, '2023-05-01', 7999.99, 1),
(2, '2023-05-02', 2199.99, 2),
(3, '2023-05-03', 3999.99, 3),
(4, '2023-05-04', 149.99, 4),
(5, '2023-05-05', 2999.99, 5),
(6, '2023-05-06', 49.99, 6),
(7, '2023-05-07', 29.99, 7),
(8, '2023-05-08', 999.99, 8),
(9, '2023-05-09', 79.99, 9),
(10, '2023-05-10', 99.99, 10);
INSERT INTO Estoque (Cod_produto, Quantidade) VALUES
(1, 50),
(2, 40),
(3, 30),
(4, 20),
(5, 60),
(6, 70),
(7, 80),
(8, 90),
(9, 100),
(10, 110);
INSERT INTO Item (Item_id, Cod_pedido, Cod_produto, Quantidade, Preco) VALUES
(1, 1, 1, 1, 3999.99),
(2, 2, 2, 1, 2999.99),
(3, 3, 3, 1, 7999.99),
(4, 4, 4, 1, 2199.99),
(5, 5, 5, 1, 99.99),
(6, 6, 6, 1, 149.99),
(7, 7, 7, 1, 49.99),
(8, 8, 8, 1, 29.99),
(9, 9, 9, 1, 999.99),
(10, 10, 10, 1, 79.99);
INSERT INTO Venda (Cod_venda, Cod_vendedor, Cod_produto, Data_venda, Quantidade, Valor_total) VALUES
(1, 1, 1, '2020-01-05', 2, 7999.98),
(2, 2, 2, '2020-01-10', 3, 8999.97),
(3, 3, 3, '2020-02-15', 1, 7999.99),
(4, 4, 4, '2020-03-20', 1, 2199.99),
(5, 5, 5, '2020-04-25', 2, 199.98),
(6, 6, 6, '2020-05-30', 4, 599.96),
(7, 7, 7, '2020-06-15', 2, 99.98),
(8, 8, 8, '2020-07-10', 1, 29.99),
(9, 9, 9, '2020-08-05', 3, 2999.97),
(10, 10, 10, '2020-09-10', 1, 79.99);
INSERT INTO ItemStatusDiario (Id, Cod_produto, Data, Preco, Status) VALUES
(1, 1, '2023-01-01', 3999.99, 'Ativo'),
(2, 2, '2023-01-02', 2999.99, 'Ativo'),
(3, 3, '2023-01-03', 7999.99, 'Ativo'),
(4, 4, '2023-01-04', 2199.99, 'Ativo'),
(5, 5, '2023-01-05', 99.99, 'Ativo'),
(6, 6, '2023-01-06', 149.99, 'Ativo'),
(7, 7, '2023-01-07', 49.99, 'Ativo'),
(8, 8, '2023-01-08', 29.99, 'Ativo'),
(9, 9, '2023-01-09', 999.99, 'Ativo'),
(10, 10, '2023-01-10', 79.99, 'Ativo');

###########################

INSERT INTO Cliente (Cod_cliente, Nome, sexo, nascimento) VALUES
(11, 'Gabriel Oliveira', 'M', '1991-08-20'),
(12, 'Amanda Silva', 'F', '1993-03-15'),
(13, 'Rodrigo Santos', 'M', '1987-12-10'),
(14, 'Juliana Pereira', 'F', '1994-07-22'),
(15, 'Fernando Costa', 'M', '1989-03-19'),
(16, 'Vanessa Lima', 'F', '1992-01-30'),
(17, 'Rafael Almeida', 'M', '1984-11-11'),
(18, 'Patrícia Ferreira', 'F', '1997-02-25'),
(19, 'Eduardo Souza', 'M', '1986-09-03'),
(20, 'Carolina Ribeiro', 'F', '1990-04-17');

INSERT INTO Vendedor (Cod_vendedor, E_mail, Nome, sobrenome, nascimento, sexo) VALUES
(11, 'gabriel@vendas.com', 'Gabriel', 'Lima', '1991-08-20', 'M'),
(12, 'amanda@vendas.com', 'Amanda', 'Fernandes', '1993-03-15', 'F'),
(13, 'rodrigo@vendas.com', 'Rodrigo', 'Gomes', '1987-12-10', 'M'),
(14, 'juliana@vendas.com', 'Juliana', 'Rodrigues', '1994-07-22', 'F'),
(15, 'fernando@vendas.com', 'Fernando', 'Martins', '1989-03-19', 'M'),
(16, 'vanessa@vendas.com', 'Vanessa', 'Silva', '1992-01-30', 'F'),
(17, 'rafael@vendas.com', 'Rafael', 'Oliveira', '1984-11-11', 'M'),
(18, 'patricia@vendas.com', 'Patrícia', 'Santos', '1997-02-25', 'F'),
(19, 'eduardo@vendas.com', 'Eduardo', 'Barbosa', '1986-09-03', 'M'),
(20, 'carolina@vendas.com', 'Carolina', 'Almeida', '1990-04-17', 'F');

INSERT INTO Categoria (Categoria_id, Caminho, Descricao, Categoria) VALUES
(11, 'Beleza e Saúde>Maquiagem>Paletas de Sombras', 'Paletas de Sombras', 'Maquiagem'),
(12, 'Automotivo>Pneus>Pneus Aro 15', 'Pneus Aro 15', 'Pneus'),
(13, 'Informática>Periféricos>Teclados', 'Teclados', 'Periféricos'),
(14, 'Eletrodomésticos>Cozinha>Máquinas de Café', 'Máquinas de Café', 'Eletrodomésticos'),
(15, 'Casa e Decoração>Móveis>Mesas de Jantar', 'Mesas de Jantar', 'Móveis'),
(16, 'Esportes e Fitness>Suplementos>Whey Protein', 'Whey Protein', 'Suplementos'),
(17, 'Moda>Roupas Infantis>Roupas de Bebê', 'Roupas de Bebê', 'Roupas Infantis'),
(18, 'Livros>Ficção Científica>Aventura Espacial', 'Aventura Espacial', 'Ficção Científica'),
(19, 'Brinquedos>Quebra-Cabeças>500 Peças', 'Quebra-Cabeças 500 Peças', 'Quebra-Cabeças'),
(20, 'Jardinagem>Ferramentas>Aparadores de Grama', 'Aparadores de Grama', 'Ferramentas');

INSERT INTO Produto (Cod_produto, Nome_produto, Descricao, Preco, Data_publicacao, Data_cancelamento, Status, Cod_vendedor, Categoria_id) VALUES
(11, 'Paleta de Sombras', 'Paleta de Sombras com 12 Cores', 49.99, '2023-01-11', NULL, 'Ativo', 11, 10),
(12, 'Pneu Aro 15', 'Pneu Aro 15 195/60R15', 299.99, '2023-01-12', NULL, 'Ativo', 12, 10),
(13, 'Teclado Mecânico', 'Teclado Mecânico RGB', 199.99, '2023-01-13', NULL, 'Ativo', 13, 10),
(14, 'Máquina de Café Expresso', 'Máquina de Café Expresso Automática', 599.99, '2023-01-14', NULL, 'Ativo', 14, 1),
(15, 'Mesa de Jantar', 'Mesa de Jantar Redonda de Vidro', 799.99, '2023-01-15', NULL, 'Ativo', 15, 1),
(16, 'Whey Protein', 'Whey Protein Concentrado 1kg', 79.99, '2023-01-16', NULL, 'Ativo', 16, 1),
(17, 'Conjunto de Body Infantil', 'Conjunto de Body para Bebê', 29.99, '2023-01-17', NULL, 'Ativo', 17, 9),
(18, 'Livro de Ficção Científica', 'Livro de Ficção Científica Clássico', 19.99, '2023-01-18', NULL, 'Ativo', 18, 9),
(19, 'Quebra-Cabeças', 'Quebra-Cabeças de 500 Peças', 14.99, '2023-01-19', NULL, 'Ativo', 19, 9),
(20, 'Aparador de Grama', 'Aparador de Grama Elétrico', 149.99, '2023-01-20', NULL, 'Ativo', 20, 8);

INSERT INTO Pedido (Cod_pedido, Data, Valor_pedido, Cod_cliente) VALUES
(11, '2023-05-11', 49.99, 11),
(12, '2023-05-12', 299.99, 12),
(13, '2023-05-13', 199.99, 13),
(14, '2023-05-14', 5990.99, 14),
(15, '2023-05-15', 7900.99, 15),
(16, '2023-05-16', 7000.99, 16),
(17, '2023-05-17', 2000.99, 17),
(18, '2023-05-18', 1009.99, 18),
(19, '2023-05-19', 14.99, 19),
(20, '2023-05-20', 1490.99, 20);

INSERT INTO Estoque (Cod_produto, Quantidade) VALUES
(11, 50),
(12, 40),
(13, 30),
(14, 20),
(15, 60),
(16, 70),
(17, 80),
(18, 90),
(19, 100),
(20, 110);

INSERT INTO Item (Item_id, Cod_pedido, Cod_produto, Quantidade, Preco) VALUES
(11, 11, 11, 1, 49.99),
(12, 12, 12, 1, 299.99),
(13, 13, 13, 1, 199.99),
(14, 14, 14, 1, 599.99),
(15, 15, 15, 1, 799.99),
(16, 16, 16, 1, 79.99),
(17, 17, 17, 1, 29.99),
(18, 18, 18, 1, 19.99),
(19, 19, 19, 1, 14.99),
(20, 20, 20, 1, 149.99);

INSERT INTO Venda (Cod_venda, Cod_vendedor, Cod_produto, Data_venda, Quantidade, Valor_total) VALUES
(11, 1, 11, '2020-01-25', 1234, 99.98),
(12, 2, 12, '2020-01-30', 5432, 899.97),
(13, 3, 13, '2020-02-15', 6543, 199.99),
(14, 4, 14, '2020-03-20', 6789, 599.99),
(15, 5, 15, '2020-04-25', 2233, 1599.98),
(16, 6, 16, '2020-05-30', 2134, 319.96),
(17, 7, 17, '2020-06-15', 2222, 59.98),
(18, 8, 18, '2020-07-10', 1, 19.99),
(19, 9, 19, '2020-08-05', 3, 44.97),
(20, 10, 20, '2020-09-10', 1, 149.99);

INSERT INTO ItemStatusDiario (Id, Cod_produto, Data, Preco, Status) VALUES
(11, 11, '2023-01-11', 49.99, 'Ativo'),
(12, 12, '2023-01-12', 299.99, 'Ativo'),
(13, 13, '2023-01-13', 199.99, 'Ativo'),
(14, 14, '2023-01-14', 599.99, 'Ativo'),
(15, 15, '2023-01-15', 799.99, 'Ativo'),
(16, 16, '2023-01-16', 79.99, 'Ativo'),
(17, 17, '2023-01-17', 29.99, 'Ativo'),
(18, 18, '2023-01-18', 19.99, 'Ativo'),
(19, 19, '2023-01-19', 14.99, 'Ativo'),
(20, 20, '2023-01-20', 149.99, 'Ativo');

####################################

INSERT INTO Cliente (Cod_cliente, Nome, sexo, nascimento) VALUES
(21, 'Fernanda Costa', 'F', '1987-10-15'),
(22, 'Rafael Pereira', 'M', '1992-04-20'),
(23, 'Carolina Santos', 'F', '1985-08-25'),
(24, 'Gustavo Oliveira', 'M', '1990-12-01'),
(25, 'Patricia Silva', 'F', '1988-06-05');

INSERT INTO Vendedor (Cod_vendedor, E_mail, Nome, sobrenome, nascimento, sexo) VALUES
(21, 'fernanda@vendas.com', 'Fernanda', 'Almeida', '2024-05-29', 'F'),
(22, 'rafael@vendas.com', 'Rafael', 'Ferreira', '1985-07-12', 'M'),
(23, 'carolina@vendas.com', 'Carolina', 'Martins', '1988-06-15', 'F'),
(24, 'gustavo@vendas.com', 'Gustavo', 'Santos', '1993-09-30', 'M'),
(25, 'patricia@vendas.com', 'Patricia', 'Lima', '1990-11-05', 'F');

INSERT INTO Categoria (Categoria_id, Caminho, Descricao, Categoria) VALUES
(21,  'Tecnologia>Celulares e Telefonias>Celulares e Smartphones', 'Celulares e Smartphones', 'Celulares'),
(22, 'Moda>Roupas Masculinas>Calças', 'Calças Masculinas', 'Calças'),
(23,  'Tecnologia>Celulares e Telefonias>Celulares e Smartphones', 'Celulares e Smartphones', 'Celulares'),
(24, 'Esportes e Fitness>Academia>Esteiras', 'Esteiras', 'Esteiras'),
(25,  'Tecnologia>Celulares e Telefonias>Celulares e Smartphones', 'Celulares e Smartphones', 'Celulares');

INSERT INTO Produto (Cod_produto, Nome_produto, Descricao, Preco, Data_publicacao, Data_cancelamento, Status, Cod_vendedor, Categoria_id) VALUES
(21, 'AirPods Pro', 'Fones de Ouvido Apple AirPods Pro', 799.99, '2023-01-21', NULL, 'Ativo', 11, 9),
(22, 'Calça Jeans', 'Calça Jeans Masculina', 129.99, '2023-01-22', NULL, 'Ativo', 12, 10),
(23, 'Máquina de Lavar Electrolux', 'Máquina de Lavar Electrolux 10kg', 1999.99, '2023-01-23', NULL, 'Ativo', 13, 2),
(24, 'Esteira Athletic', 'Esteira Ergométrica Athletic Advanced 720EE', 3999.99, '2023-01-24', NULL, 'Ativo', 14, 2),
(25, 'Farol de LED', 'Farol de LED para Carros', 149.99, '2023-01-25', NULL, 'Ativo', 15, 15);

INSERT INTO Pedido (Cod_pedido, Data, Valor_pedido, Cod_cliente) VALUES
(21, '2023-05-11', 799.99, 21),
(22, '2023-05-12', 129.99, 22),
(23, '2023-05-13', 1999.99, 23),
(24, '2023-05-14', 3999.99, 24),
(25, '2023-05-15', 149.99, 25);

INSERT INTO Estoque (Cod_produto, Quantidade) VALUES
(21, 50),
(22, 40),
(23, 30),
(24, 20),
(25, 60);

INSERT INTO Item (Item_id, Cod_pedido, Cod_produto, Quantidade, Preco) VALUES
(21, 11, 21, 1, 799.99),
(22, 12, 22, 1, 129.99),
(23, 13, 23, 1, 1999.99),
(24, 14, 24, 1, 3999.99),
(25, 15, 25, 1, 149.99);

INSERT INTO Venda (Cod_venda, Cod_vendedor, Cod_produto, Data_venda, Quantidade, Valor_total) VALUES
(21, 11, 21, '2020-01-25', 2, 1599.98),
(22, 12, 22, '2020-01-30', 3, 899.97),
(23, 13, 23, '2020-02-15', 1, 1999.99),
(24, 14, 24, '2020-03-20', 1, 3999.99),
(25, 15, 25, '2020-04-25', 2, 299.98);

INSERT INTO ItemStatusDiario (Id, Cod_produto, Data, Preco, Status) VALUES
(21, 21, '2023-01-21', 799.99, 'Ativo'),
(22, 22, '2023-01-22', 129.99, 'Ativo'),
(23, 23, '2023-01-23', 1999.99, 'Ativo'),
(24, 24, '2023-01-24', 3999.99, 'Ativo'),
(25, 25, '2023-01-25', 149.99, 'Ativo');
