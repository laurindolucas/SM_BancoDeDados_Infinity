CREATE DATABASE  loja;
USE loja;

CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL
);

INSERT INTO Produtos (nome, preco) VALUES
('Camiseta', 39.90),
('Calça Jeans', 129.90),
('Tênis Esportivo', 249.90),
('Relógio de Pulso', 399.90),
('Bolsa Feminina', 89.90),
('Boné', 29.90),
('Jaqueta', 199.90),
('Meias (par)', 9.90),
('Óculos de Sol', 149.90),
('Carteira', 59.90);

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

INSERT INTO Clientes (nome, cidade) VALUES
('Maria Silva', 'São Paulo'),
('João Souza', 'Rio de Janeiro'),
('Ana Lima', 'São Paulo'),
('Carlos Pereira', 'Belo Horizonte'),
('Fernanda Costa', 'São Paulo');

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

INSERT INTO Pedidos (produto, valor, id_cliente) VALUES
('Notebook', 3500.00, 1),
('Mouse', 80.00, 2),
('Teclado', 150.00, 3),
('Monitor', 1200.00, 1),
('Cadeira Gamer', 900.00, 4),
('Headset', 250.00, 5),
('Webcam', 300.00, 3),
('Impressora', 600.00, 5);
