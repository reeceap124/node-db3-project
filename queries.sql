-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT ProductName, CategoryName 
FROM Product
JOIN Category
ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT Id, CompanyName, OrderDate
FROM [Order] as O
Join Shipper as S
On O.ShipVia = S.Id
WHERE OrderDate < date('2012-08-09');

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName as Name, Quantity 
FROM OrderDetail AS O
JOIN Product AS P
On O.ProductId = P.Id
WHERE OrderId = 10251
ORDER BY Name ASC;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT OrderId, CompanyName, LastName
FROM [Order] AS O
JOIN OrderDetail As OD
ON O.Id = OD.OrderId
JOIN Customer AS C
ON O.CustomerId = C.Id
JOIN Employee AS E
ON O.EmployeeId = E.Id;
