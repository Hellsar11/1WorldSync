USE [Task2]
GO
TRUNCATE TABLE [dbo].[Customer]
GO
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'������')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'����')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'�������')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'������')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'��������')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'�����')
INSERT INTO [dbo].[Customer] ([Name]) VALUES (N'�������')
GO
TRUNCATE TABLE [dbo].[Product]
GO
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� Xiaomi Mi Band 3', 1548);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Amazfit Bip', 4199);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Samsung Galaxy Watch Active', 12050);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� Honor Band 4', 2249);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Samsung Galaxy Watch (46 mm)', 16250);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Samsung Gear S3 Frontier', 12860);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� CARCAM DZ09', 987);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� HUAWEI Band 3 Pro', 4169);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� CARCAM S2', 2990);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� Xiaomi Mi Band 2', 1250);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Garmin Instinct', 19770);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Amazfit Stratos', 10289);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Amazfit Verge', 8171);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� Amazfit Cor 2', 3850);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� IWO Smart Watch IWO 7', 6500);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Amazfit Pace', 6899);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Garmin Forerunner 235', 12970);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� Apple Watch Series 3 38mm Aluminum Case with
Sport Band', 16740);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'������� GSMIN WR12', 2790);
INSERT INTO [dbo].[Product] ([Name], [Price]) VALUES (N'���� KREZ Jazz', 3990);
GO
TRUNCATE TABLE [dbo].[Order]
GO
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (1, '2017-03-21', NULL)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (1, '2017-04-22', 0.02)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (1, '2017-05-23', 0.1)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (1, '2018-01-04', 0.05)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (1, '2019-02-12', 0.03)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (3, '2017-03-16', NULL)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (3, '2017-03-26', 0.01)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (3, '2019-06-03', 0.03)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2015-07-25', 0.01)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2015-05-07', 0.02)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2016-01-14', 0.03)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2016-03-29', 0.04)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2017-05-03', 0.05)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2018-02-06', 0.1)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2019-01-27', 0.1)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (4, '2019-05-12', 0.15)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (6, '2019-01-20', NULL)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (6, '2019-01-29', 0.02)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (6, '2019-02-17', 0.02)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (6, '2019-03-01', 0.02)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (7, '2019-03-02', 0.03)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (7, '2019-03-11', 0.1)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (7, '2019-04-22', 0.12)
INSERT INTO [dbo].[Order] ([CustomerId], [OrderDate], [Discount]) VALUES (7, '2019-06-01', 0.15)
GO
TRUNCATE TABLE [dbo].[OrderItem]
GO
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (1, 11, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (1, 20, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (2, 1, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (3, 2, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (4, 3, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (5, 4, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (6, 5, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (7, 6, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (8, 7, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (9, 8, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (10, 9, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (11, 9, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (12, 10, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (13, 10, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (14, 11, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (15, 11, 5);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (16, 12, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (17, 12, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (18, 13, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (19, 13, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (20, 13, 4);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (21, 1, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (21, 4, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (21, 9, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (22, 1, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (22, 4, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (22, 9, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (23, 1, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (24, 7, 2);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (24, 4, 1);
INSERT INTO [dbo].[OrderItem] ([OrderId], [ProductId], [NumberOfItems]) VALUES (24, 3, 2);
GO