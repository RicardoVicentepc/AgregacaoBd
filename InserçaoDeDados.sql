USE bdLojaRoupas

select * from tbFabricante
INSERT INTO tbFabricante(nomeFabricante) 
VALUES
('Malwee'),
('Marisol'),
('Cia da Malha')
select * from tbFabricante

INSERT INTO tbFuncionario(nomeFuncionario,idadeFuncionario,dataAdmissao,salarioFuncionario)
VALUES
('Jose',80,'01-05-2020',2000),
('Mario',19,'02-05-2020',2545)
select * from tbFuncionario


INSERT INTO tbProduto(idFabricante,idFuncionario,nomeProduto,precoProduto,dataEntradaProduto)
VALUES
(1,1,'CamisaPolo',20.00,'01-02-2022'),
(1,1,'CamisaVerde',50.00,'01-08-2021'),
(1,1,'CamisaMarrom',140.00,'08-02-2020'),
(2,2,'CalçaAzul',32.00,'08-04-2018'),
(2,2,'CalçaVerde', 23.00,'01-02-2020'),
(2,2,'CalçaAmarela', 41.00,'02-05-2021'),
(3,2,'moletomAzul', 56.00,'02-12-2020'),
(3,2,'moletomverde', 64.00,'01-08-2022'),
(3,2,'moletomRosa',123.00,'04-02-2021')

select * from tbProduto

INSERT INTO tbCliente(nomeCliente,idadeCliente)
VALUES
('Vanessa', 55),
('Junior', 32),
('Aline', 44),
('Clodoaldo', 100),
('Samella', 17)
select * from tbCliente

INSERT INTO tbVendedor(nomeVendedor)
VALUES 
('João Santana'),
('Raquel Torres')
select * from tbVendedor

INSERT INTO tbVenda(idCliente,idVendedor,totalVenda,dataVenda)
values
(1,2,1250.0,'02-01-2021'),
(2,2,2000.0,'02-01-2021')
select * from tbVenda

INSERT INTO tbItensVenda(idVenda,idProduto,quantidadaeItens,subTotalItens)
VALUES
(1,1,1,230),
(1,2,1,133),
(2,5,1,135),
(2,6,1,545)
select * from tbItensVenda