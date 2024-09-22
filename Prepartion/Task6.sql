DELIMITER //
CREATE PROCEDURE CancelOrder(IN CancelOrder1 CHAR(11))
BEGIN
	DELETE FROM orders WHERE orderID = CancelOrder1;	
	SELECT 
    CONCAT('Order number ',
            CancelOrder1,
            ' has been cancelled.') AS Confirmation;    
END //
DELIMITER ;

CALL CancelOrder('5');