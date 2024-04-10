USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
SELECT 
        p.Name AS ProductName, 
        pi.WarehouseAmount AS Amount
    FROM 
        ProductInventory pi
        JOIN Products p ON pi.ProductID = p.ID
    WHERE 
        pi.WarehouseID = WarehouseID;
END //
