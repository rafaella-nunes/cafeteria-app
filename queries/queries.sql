-- Tabela para produtos (itens no menu da cafeteria)
CREATE TABLE produtos (
    cod_produto INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela para clientes
CREATE TABLE clientes (
    cod_cliente INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    telefone VARCHAR(20)
);

-- Tabela para pedidos
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    cod_cliente INT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Em andamento',
    FOREIGN KEY (cod_cliente) REFERENCES clientes(cod_cliente)
);

-- Tabela para detalhes do pedido (itens específicos do pedido)
CREATE TABLE detalhes_pedido (
    detalhe_id INT PRIMARY KEY,
    pedido_id INT,
    cod_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
    FOREIGN KEY (cod_produto) REFERENCES produtos(cod_produto)
);