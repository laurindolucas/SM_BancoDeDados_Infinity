# BANCO DE DADOS - Estacionamento

Este projeto simula, de forma simples, o sistema de banco de dados de um estacionamento. Criei este projeto como uma forma de revisar os conceitos aprendidos durante o Super Módulo de Banco de Dados da Infinity School.

É um projeto inicial e didático, mas que pretendo expandir futuramente, conectando-o a um back-end e front-end para torná-lo mais completo e robusto.

Enquanto isso, compartilho aqui o processo passo a passo e a explicação da estrutura do banco de dados.



---

## Objetivos
- Patricar os comandos SQL mostrados durante o super módulo
- simular uma situação real de um sistema de estacionamento
- Praticar comandos SQL como ´CREATE, INSERT, SELECT, UPDATE e DELETE`

---

## Estrutura do Banco de Dados

### Criação do Banco
```sql
CREATE DATABASE estacionamento;
USE estacionamento; 
```
### Criação das tabelas 

```sql
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

```

### Inserção de Dados

```sql
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

```
### Consultas com INNER JOIN

```sql
--Mostra a placa, tipo de veículo e o número da vaga onde está estacionado
SELECT 
    cliente.nome_cliente,
    cliente.cpf,
    reserva.placa_veiculo,
    reserva.tipo_veiculo
FROM cliente
INNER JOIN reserva ON cliente.id_cliente = reserva.id_cliente;

-- Mostra todos os clientes e seus respectivos veículos reservados
SELECT 
    cliente.nome_cliente,
    cliente.cpf,
    reserva.placa_veiculo,
    reserva.tipo_veiculo
FROM cliente
INNER JOIN reserva ON cliente.id_cliente = reserva.id_cliente;

```
### Updates e Deletes

```sql
--Atuliza a situação de uma vaga para "Ocupada"

UPDATE vagas
SET situacao = 'Ocupada'
WHERE numero_vaga = 5;

-- Atualiza o telefone de um cliente pelon seu id
UPDATE cliente
SET telefone = '88888-8888'
WHERE id_cliente = 3;

-- Deleta um cliente pelo seu id
DELETE FROM cliente
WHERE id_cliente = 7;

-- Deleta todas as vagas que estão "Disponível"
DELETE FROM vagas
WHERE situacao = 'Disponível';

```

---

## Considerações finais

Bom o projeto foi esse, de fato simples para fixar conhecimento mas um ótimo exercício para isso, como dito antes irei melhorar ele em breve. Foi um otimo super modulo forma 24 horas totais de aulas que foram otimas para desenvolver mais uma habilidade na programação.
