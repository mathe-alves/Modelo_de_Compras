-- Definindo a tabela Cliente
CREATE TABLE Cliente (
    Cod_cliente INTEGER PRIMARY KEY,
    Nome VARCHAR(100),
    sexo VARCHAR(10),
    nascimento DATE
);

-- Criação da tabela Vendedor
CREATE TABLE Vendedor (
	Cod_vendedor INTEGER PRIMARY KEY AUTO_INCREMENT,
    E_mail VARCHAR(100),
    Nome VARCHAR(100),
    sobrenome VARCHAR(100),
    nascimento DATE,
    sexo VARCHAR(1)
);

-- Definindo a tabela Produto
CREATE TABLE Produto (
    Cod_produto INTEGER PRIMARY KEY,
    Nome_produto VARCHAR(100),
    Descricao TEXT,
    Preco DECIMAL(10, 2),
    Data_publicacao DATE,
    Data_cancelamento DATE,
    Status VARCHAR(50),
    Cod_vendedor INTEGER,
    Categoria_id INTEGER,
    FOREIGN KEY (Cod_vendedor) REFERENCES Vendedor(Cod_vendedor),
    FOREIGN KEY (Categoria_id) REFERENCES Categoria(Categoria_id)
);

-- Definindo a tabela Pedido
CREATE TABLE Pedido (
    Cod_pedido INTEGER PRIMARY KEY,
    Data DATE,
    Valor_pedido DECIMAL(10, 2),
    Cod_cliente INTEGER,
    FOREIGN KEY (Cod_cliente) REFERENCES Cliente(Cod_cliente)
);

-- Definindo a tabela Estoque
CREATE TABLE Estoque (
    Cod_produto INTEGER PRIMARY KEY,
    Quantidade INTEGER,
    FOREIGN KEY (Cod_produto) REFERENCES Produto(Cod_produto)
);

-- Definindo a tabela Categoria
CREATE TABLE Categoria (
    Categoria_id INTEGER PRIMARY KEY,
    Caminho VARCHAR(255),
    Descricao VARCHAR(255),
    Categoria VARCHAR(100)
);

-- Definindo a tabela Item (para armazenar os produtos do pedido)
CREATE TABLE Item (
    Item_id INTEGER PRIMARY KEY,
    Cod_pedido INTEGER,
    Cod_produto INTEGER,
    Quantidade INTEGER,
    Preco DECIMAL(10, 2),
    FOREIGN KEY (Cod_pedido) REFERENCES Pedido(Cod_pedido),
    FOREIGN KEY (Cod_produto) REFERENCES Produto(Cod_produto)
);

-- Nova tabela Venda para registrar vendas realizadas
CREATE TABLE Venda (
    Cod_venda INTEGER PRIMARY KEY,
    Cod_vendedor INTEGER,
    Cod_produto INTEGER,
    Data_venda DATE,
    Quantidade INTEGER,
    Valor_total DECIMAL(10, 2),
    FOREIGN KEY (Cod_vendedor) REFERENCES Vendedor(Cod_vendedor),
    FOREIGN KEY (Cod_produto) REFERENCES Produto(Cod_produto)
);

-- Nova tabela ItemStatusDiario para registrar o preço e status dos itens no final do dia
CREATE TABLE ItemStatusDiario (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Cod_produto INTEGER,
    Data DATE,
    Preco DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (Cod_produto) REFERENCES Produto(Cod_produto)
);
