# BANCO DE DADOS - Estacionamento

Este projeto simula de forma simples o sistema de um banco de dados de um estacionamentom, fiz esse projeto para relembrar conceitos e coisas que aprendi durante
o super módulo de banco de dados da Infinity School, é um projeto simples que em breve quero criar mais coisas como conexões a um back-end e front-end deixando mais 
completo e robusto, enquanto isso fiquem com o processo de passo a passo e explicação desse banco de dados.

---

## Objetivos
- Patricar os comandos SQL mostrados durante o super módulo
- simular uma situação real de um estacionamento

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
