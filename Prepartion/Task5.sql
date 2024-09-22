DELIMITER //
CREATE PROCEDURE  AddValidBooking (TableNumber INT, StaffID INT, BookingDate DATE, CustomerID CHAR(11))
BEGIN
START TRANSACTION;
	SELECT 1 AS 'status'
	FROM bookings 
	WHERE BookingDate = BookingDate
	AND TableNumber = TableNumber
	LIMIT 1
	INTO @booking_status;

IF @booking_status = 1 THEN
	ROLLBACK;
	SELECT CONCAT("A client has already booked table ", TableNumber, " on ", BookingDate,  ". Cannot add booking. Transaction cancelled.") AS 'Booking status';

ELSE
	INSERT INTO bookings (table_no, booking_staff_id, booking_date, booking_customer_id) VALUES 
	(TableNumber, StaffID, BookingID, CustomerID);
COMMIT;

SELECT CONCAT("Table ", table_number, " is free - booking successful.") AS 'Booking status';
END IF;
END //

DELIMITER ;

CALL AddValidBooking(5, 2, "2022-10-10", "3");