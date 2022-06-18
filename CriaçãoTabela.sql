CREATE DATABASE bdLojaRoupas
GO
USE bdLojaRoupas



CREATE TABLE tbCliente(
idCliente INT PRIMARY KEY IDENTITY(1,1)
, nomeCliente VARCHAR(80) NOT NULL
, idadeCliente CHAR(3) NOT NULL
)
CREATE TABLE tbFabricante(
idFabricante INT PRIMARY KEY IDENTITY(1,1)
, nomeFabricante VARCHAR(80) NOT NULL
)
CREATE TABLE tbFuncionario(
idFuncionario INT PRIMARY KEY IDENTITY(1,1)
, nomeFuncionario VARCHAR(80) NOT NULL
, idadeFuncionario CHAR(3) NOT NULL
, dataAdmissao DATETIME NOT NULL
, salarioFuncionario MONEY NOT NULL
)
CREATE TABLE tbVendedor(
idVendedor INT PRIMARY KEY IDENTITY(1,1)
, nomeVendedor VARCHAR(80) NOT NULL
)
CREATE TABLE tbVenda(
idVenda INT PRIMARY KEY IDENTITY(1,1)
, dataVenda DATETIME NOT NULL
, idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor)
, idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
, totalVenda MONEY NOT NULL
)
CREATE TABLE tbProduto(
idProduto INT PRIMARY KEY IDENTITY (1,1)
, nomeProduto VARCHAR(80) NOT NULL
, precoProduto MONEY NOT NULL
, dataEntradaProduto DATETIME NOT NULL
, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
, idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
)

CREATE TABLE tbItensVenda(
idItensVenda INT PRIMARY KEY IDENTITY(1,1)
, idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
, idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
, quantidadaeItens INT NOT NULL
, subTotalItens MONEY NOT NULL
)




select * from tbCliente
select * from tbFabricante
select * from tbFuncionario
select * from tbItensVenda
select * from tbProduto
select * from tbVenda
select * from tbVendedor