-- Task 2

-- For your second task, Little Lemon need information from two tables
-- on all customers with orders that cost more than $50. Extract the
-- required information from each of the following tables by using the
-- relevant JOIN clause:

-- Customers table: The customer id and full name.
-- Orders table: The order id and cost.

-- The result set should be sorted by the lowest cost amount.

SELECT C.CustomerID, C.Name, O.OrderID, O.TotalCost
FROM Orders AS O
INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE O.TotalCost > 50;

