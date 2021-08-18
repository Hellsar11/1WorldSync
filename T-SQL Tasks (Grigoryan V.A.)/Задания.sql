USE [Task2]
GO

--1) ����� ID � ����� ��������, ��������� ������ � 2018 ����
SELECT [Order].[Id],[CustomerId], [Customer].[Name], YEAR([Order].[OrderDate]) AS '���'
FROM [Task2].[dbo].[Order] JOIN [Task2].[dbo].[Customer] ON Customer.Id = CustomerId WHERE [Order].[OrderDate] > '20171231' AND [Order].[OrderDate] < '20190101'

--2) ����� ������� ������ � 2019
SELECT MIN([Order].[Id]) AS '����� ������� ������ � 2019'
FROM [Task2].[dbo].[Order] WHERE [Order].[OrderDate] > '20181231';

--3) ����� ID � ��� �������, ����������� ������������ ������ � 2016 ����
SELECT [Order].[Id],[CustomerId], [Customer].[Name], YEAR([Order].[OrderDate]) AS '���', [Order].[Discount] AS '������������ ������'
FROM [Task2].[dbo].[Order] JOIN [Task2].[dbo].[Customer] ON Customer.Id = CustomerId 
WHERE [Order].[Discount] = (SELECT MAX([Order].[Discount]) FROM [Order] WHERE [Order].[OrderDate] > '20151231' AND [Order].[OrderDate] < '20170101')

--4) ���������� ������������ ������� ��������������� �� �����
SELECT YEAR([Order].[OrderDate]) AS '���', COUNT(*) AS '���������� �������' FROM [Task2].[dbo].[Order] GROUP BY YEAR([Order].[OrderDate]) ORDER BY YEAR([Order].[OrderDate])

--5) ����� �������� �����, ����������� ������ � ����� �������� (�� �� �����)
SELECT SUM(NumberOfItems * Price) AS '�������� �����, ����������� ������ � ����� ��������' 
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId] 
WHERE [Customer].[Name] = '�����'

--6) ��������� ���� �������� �������� ����� �� ��������� � �������� ���� ����������� (�� �� �����)

DECLARE @MashaExpenses MONEY,
@AllExpenses MONEY, @Dolya INT

SET @MashaExpenses = (SELECT SUM(NumberOfItems * Price)
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId] 
WHERE [Customer].[Name] = '�����')

SET @AllExpenses = (SELECT SUM(NumberOfItems * Price) 
FROM [Task2].[dbo].[OrderItem]
JOIN [Task2].[dbo].[Product] ON Product.Id = ProductId 
JOIN [Task2].[dbo].[Order] ON [Order].[Id] = [OrderItem].[OrderId]
JOIN [Task2].[dbo].[Customer] ON Customer.Id = [Order].[CustomerId])

SET @Dolya = (@MashaExpenses/@AllExpenses) * 100

SELECT @Dolya AS '���� �������� �������� ����� �� ��������� � �������� ���� ����������� � ���������� (%) �����������'

