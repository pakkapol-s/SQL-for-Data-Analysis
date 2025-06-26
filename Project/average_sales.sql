-- Find average daily sales
SELECT SUM(Quantity) / COUNT (DISTINCT CreationDate) AS AverageDailySales
FROM Orders
  LEFT JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID