USE [Task2]
GO

--1) Найти ID и имена клиентов, сделавших заказы в 2018 году
SELECT [Order].[Id],[CustomerId], [Customer].[Name], YEAR([Order].[OrderDate]) AS 'Год'
FROM [Task2].[dbo].[Order] JOIN [Task2].[dbo].[Customer] ON Customer.Id = CustomerId WHERE [Order].[OrderDate] > '20171231' AND [Order].[OrderDate] < '20190101'

--2) Номер первого заказа в 2019
SELECT MIN([Order].[Id]) AS 'Номер первого заказа в 2019'
FROM [Task2].[dbo].[Order] WHERE [Order].[OrderDate] > '20181231';

--3) Найти ID и имя клиента, получившего максимальную скидку в 2016 году
SELECT [Order].[Id],[CustomerId], [Customer].[Name], YEAR([Order].[OrderDate]) AS 'Год', [Order].[Discount] AS 'Максимальная скидка'
FROM [Task2].[dbo].[Order] JOIN [Task2].[dbo].[Customer] ON Customer.Id = CustomerId 
WHERE [Order].[Discount] = (SELECT MAX([Order].[Discount]) FROM [Order] WHERE [Order].[OrderDate] > '20151231' AND [Order].[OrderDate] < '20170101')

--4) Количество обработанных заказов сгруппированных по годам
SELECT YEAR([Order].[OrderDate]) AS 'Год', COUNT(*) AS 'Количество заказов' FROM [Task2].[dbo].[Order] GROUP BY YEAR([Order].[OrderDate]) ORDER BY YEAR([Order].[OrderDate])

--5) Найти итоговую сумму, потраченную Марией в нашем магазине (за всё время)
SELECT SUM(NumberOfItems * Price) AS 'Итоговая сумма, потраченная Марией в нашем магазине' 
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId] 
WHERE [Customer].[Name] = 'Мария'

--6) Вычислить долю денежных расходов Марии по отношению к расходам всех покупателей (за всё время)

DECLARE @MashaExpenses MONEY,
@AllExpenses MONEY, @Dolya INT

SET @MashaExpenses = (SELECT SUM(NumberOfItems * Price)
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId] 
WHERE [Customer].[Name] = 'Мария')

SET @AllExpenses = (SELECT SUM(NumberOfItems * Price) 
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId])

SET @Dolya = (@MashaExpenses/@AllExpenses) * 100

SELECT @Dolya AS 'Доля денежных расходов Марии по отношению к расходам всех покупателей в процентном (%) соотношении'

