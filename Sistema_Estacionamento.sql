CREATE DATABASE estacionamento;
USE estacionamento; 

CREATE TABLE vagas (
id_vagas INT AUTO_INCREMENT PRIMARY KEY,
numero_vaga INT UNIQUE NOT NULL, 
tipoVaga VARCHAR(100) NOT NULL,
situacao VARCHAR(100) NOT NULL
);

CREATE TABLE cliente (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(100) NOT NULL,
cpf VARCHAR(100) NOT NULL UNIQUE, 
telefone VARCHAR(100) NOT NULL
);

CREATE TABLE reserva (
id_reserva INT AUTO_INCREMENT PRIMARY KEY,
placa_veiculo VARCHAR(25) UNIQUE NOT NULL,
tipo_veiculo VARCHAR (50) NOT NULL,
numero_vaga INT NOT NULL,
id_cliente INT NOT NULL,
FOREIGN KEY (numero_vaga) REFERENCES vagas(numero_vaga),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

INSERT INTO vagas (numero_vaga, tipoVaga, situacao) VALUES
(101, 'Carro', 'Disponível'),
(102, 'Carro', 'Ocupada'),
(103, 'Moto', 'Disponível'),
(104, 'Moto', 'Disponível'),
(105, 'Carro', 'Ocupada'),
(106, 'Carro', 'Disponível'),
(107, 'Carro', 'Disponível'),
(108, 'Moto', 'Ocupada'),
(109, 'Carro', 'Disponível'),
(110, 'Moto', 'Disponível');

INSERT INTO cliente (nome_cliente, cpf, telefone) VALUES
('Ana Souza', '12345678900', '81991234567'),
('Bruno Lima', '23456789011', '81992345678'),
('Carla Mendes', '34567890122', '81993456789'),
('Diego Rocha', '45678901233', '81994567890'),
('Eduarda Silva', '56789012344', '81995678901'),
('Felipe Costa', '67890123455', '81996789012'),
('Gabriela Ramos', '78901234566', '81997890123'),
('Henrique Alves', '89012345677', '81998901234'),
('Isabela Torres', '90123456788', '81999012345'),
('João Pedro', '01234567899', '81990123456');

INSERT INTO reserva (placa_veiculo, tipo_veiculo, numero_vaga, id_cliente) VALUES
('ABC1A23', 'Carro', 102, 1),
('BCD2B34', 'Carro', 105, 2),
('CDE3C45', 'Moto', 108, 3),
('DEF4D56', 'Carro', 101, 4),
('EFG5E67', 'Moto', 103, 5),
('FGH6F78', 'Carro', 106, 6),
('GHI7G89', 'Carro', 107, 7),
('HIJ8H90', 'Moto', 104, 8),
('IJK9I01', 'Carro', 109, 9),
('JKL0J12', 'Moto', 110, 10);

UPDATE vagas
SET situacao = 'Ocupada'
WHERE numero_vaga = 5;

UPDATE cliente
SET telefone = '88888-8888'
WHERE id_cliente = 3;




