DELIMITER //
CREATE PROCEDURE  GetMaxQuantity()
BEGIN
	SELECT MAX(Quantity)  FROM orders;
END //
DELIMITER ;
CALL GetMaxQuantity();