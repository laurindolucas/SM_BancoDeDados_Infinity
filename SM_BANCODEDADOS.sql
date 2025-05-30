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

