-- Determine new customers
SELECT 
FirstName,
LastName,
COUNT(OrderID) AS TotalOrder
From Customer
LEFT JOIN Orders
ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID
Having COUNT(OrderID) = 0
