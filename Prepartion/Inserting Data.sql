USE little_lemon;

-- Populate Address table
INSERT INTO little_lemon.Address (AddressID,Country, City, PostalCode)
VALUES
    ('1','United States', 'New York', '10001'),
    ('2','United Kingdom', 'London', 'SW1A 1AA'),
    ('3','Canada', 'Toronto', 'M5V 2H1'),
    ('4','Australia', 'Sydney', '2000'),
    ('5','France', 'Paris', '75001');

-- Populate Customers table
INSERT INTO little_lemon.Customers (CustomerID,Name, Email, PhoneNumber, AddressID)
VALUES
    ('1','John Doe', 'john.doe@email.com', '1234567890', 1),
    ('2','Jane Smith', 'jane.smith@email.com', '9876543210', 2),
    ('3','Michael Johnson', 'michael.johnson@email.com', '5555555555', 3),
    ('4','Emily Davis', 'emily.davis@email.com', '1112223333', 4),
    ('5','David Wilson', 'david.wilson@email.com', '4445556666', 5);

-- Populate Staff table
INSERT INTO little_lemon.Staff (StaffID,Role, Salary)
VALUES
    ('1','Manager', 600.00),
    ('2','Chef', 500.00),
    ('3','Waiter', 350.00),
    ('4','Bartender', 400.00),
    ('5','Hostess', 300.00);

-- Populate Bookings table
INSERT INTO little_lemon.Bookings (BookinID,BookingDate, TableNumber, CustomerID, StaffID)
VALUES
    (1,'2023-05-01 19:00:00', 1, 1, 5),
    (2,'2023-05-02 20:30:00', 2, 2, 3),
    (3,'2023-05-03 18:00:00', 3, 3, 5),
    (4,'2023-05-04 21:00:00', 4, 4, 3),
    (5,'2023-05-05 19:30:00', 5, 5, 5);

-- Populate Orders table
INSERT INTO little_lemon.Orders (OrderID,OrderDate, Quantity, TotalCost, CustomerID)
VALUES
    (1,'2023-05-01 19:30:00', 2, 50.00, 1),
    (2,'2023-05-02 21:00:00', 3, 75.00, 2),
    (3,'2023-05-03 18:30:00', 1, 25.00, 3),
    (4,'2023-05-04 21:30:00', 4, 100.00, 4),
    (5,'2023-05-05 20:00:00', 2, 60.00, 5);

-- Populate Delivery_status table
INSERT INTO little_lemon.Delivery_status (DeliveryID,DeliveryDate, Status, OrderID)
VALUES
    (1,'2023-05-01 20:00:00', 'Delivered', 1),
    (2,'2023-05-02 21:30:00', 'Delivered', 2),
    (3,'2023-05-03 19:00:00', 'Delivered', 3),
    (4,'2023-05-04 22:00:00', 'Delivered', 4),
    (5,'2023-05-05 20:30:00', 'Delivered', 5);

-- Populate Menu table
INSERT INTO little_lemon.Menu (MenuID,ItemName, Price, Category)
VALUES
    (1,'Margherita Pizza', 12.99, 'Main Course'),
    (2,'Caesar Salad', 8.99, 'Starter'),
    (3,'Spaghetti Bolognese', 14.99, 'Main Course'),
    (4,'Tiramisu', 6.99, 'Dessert'),
    (5,'Mojito', 9.99, 'Drink');

-- Populate OrdersMenu table
INSERT INTO little_lemon.OrdersMenu (OrderID, MenuID, Quantity)
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (2, 3, 2),
    (2, 4, 1),
    (3, 1, 1),
    (4, 2, 2),
    (4, 3, 1),
    (4, 4, 1),
    (5, 5, 2);

DESC Staff;