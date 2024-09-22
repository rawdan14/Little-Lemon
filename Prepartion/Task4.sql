DELIMITER //
CREATE PROCEDURE CheckBooking (book_date DATE, table_num INT)
BEGIN
DECLARE table_booked INT DEFAULT 0;
SELECT 
    COUNT(table_booked)
INTO table_booked FROM
    bookings
WHERE
    BookingDate = book_date
        AND TableNumber = table_num;
    IF table_booked > 0 THEN
      SELECT CONCAT( "Table ",table_num, " is already booked on",   book_date,".") AS "Booking status";
      ELSE 
      SELECT CONCAT( "Table ",table_num," is not booked on",  book_date,".") AS "Booking status";
    END IF;
END//
DELIMITER ;

CALL CheckBooking("2022-10-10", 4);