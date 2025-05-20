-- SQL script that creates a trigger that decreases
-- the quantity of an item after adding a new order.

-- Set custom delimiter for trigger definition
DELIMITER $$

-- Create a trigger to decrease quantity after a new order
CREATE TRIGGER decrease_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END$$

-- Reset delimiter back to semicolon
DELIMITER ;