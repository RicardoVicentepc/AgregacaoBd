USE bdLojaRoupas


/*Mudando o nome do fabricante*/
select * from tbFabricante
UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE idFabricante = 3
select * from tbFabricante

/*Desconto de 10%*/
select * from tbVenda
UPDATE tbVenda
SET totalVenda = totalVenda - ((totalVenda*10)/100)
WHERE idCliente = 1
select * from tbVenda

/*-*Aumento dos Produto em 20%*/
select * from tbProduto
UPDATE tbProduto
SET precoProduto = precoProduto + ((precoProduto * 20) / 100)
WHERE idFabricante = 2
select * from tbProduto

/*-*Diminiur quantidade de itens*/
select * from tbItensVenda
UPDATE tbItensVenda
SET quantidadaeItens = quantidadaeItens - 10
WHERE idVenda = 3

/*-*Remoção de item de venda*/
select * from tbItensVenda
DELETE FROM tbItensVenda
WHERE idItensVenda = 2
select * from tbItensVenda

/*-*Removendo todos itens da venda cod=3*/
select * from tbItensVenda
DELETE FROM tbItensVenda
WHERE idItensVenda = 3
select * from tbItensVenda

/*-*Removendo fabricante cod 1 */
select * from tbFabricante
DELETE FROM tbFabricante
WHERE idFabricante = 1
select * from tbFabricante
/*Deu erro na chave estrangeira*/


/*Continuação do exercicios colcando agregação*/

/*-* Total de Fabricante*/
SELECT COUNT(idFabricante) FROM tbFabricante
select * from tbFabricante

/*-* Total de Funcionarios*/
SELECT COUNT(idFuncionario) FROM tbFuncionario
select * from tbFuncionario

/*-* Total de Clientes*/
SELECT COUNT(idCliente) FROM tbCliente
select * from tbCliente

/*-*Média aritmetica dos preços do produto*/
SELECT AVG(precoProduto) FROM tbProduto
select * from tbProduto

/*-*Maior Venda Realizada*/
SELECT MAX(totalvenda) FROM tbVenda
select * from tbVenda

/*-*Menor Venda Realizada*/
SELECT MIN(totalvenda) FROM tbVenda
select * from tbVenda

/*-*Maior preço de produtos*/
SELECT MAX(precoProduto) FROM tbProduto
select * from tbProduto

/*-*Menor preço de produtos*/
SELECT MIN(precoProduto) FROM tbProduto
select * from tbProduto

/*-*Total de Vendas Realizadas*/
SELECT COUNT(idVenda) FROM tbVenda

/*-*Soma de Vendas Realizadas*/
SELECT SUM(totalVenda) FROM tbVenda
select * from tbVenda

/*-*Media de Vendas Realizadas*/
SELECT AVG(totalVenda) FROM tbVenda
select * from tbVenda


