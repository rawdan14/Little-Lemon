USE little_lemon;

-- TASK 1

-- In the first task, Little Lemon need you to create a virtual table
-- called OrdersView that focuses on OrderID, Quantity and Cost columns
-- within the Orders table for all orders with a quantity greater than 2.

-- Here’s some guidance around completing this task:

-- 1. Use a CREATE VIEW statement.
-- 2. Extract the order id, quantity and cost data from the Orders table.
-- 3. Filter data from the orders table based on orders with a quantity greater than 2.

CREATE VIEW OrdersView AS
    SELECT O.OrderID, O.Quantity, O.TotalCost
    FROM little_lemon.Orders AS O
    WHERE O.Quantity > 2;

SELECT * FROM OrdersView;

