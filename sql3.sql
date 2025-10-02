 INSERT INTO Products(product_id,product_name,product_type,price) VALUES 
 ('P006','Plates','Utencils',240.50),
 ('P007','Bag','Leather','500.00'),
 ('P008','Trouser','Clothing','800.00');

UPDATE Products SET price=price+price*0.15 WHERE product_id='P006';

DELETE FROM Products WHERE product_id='P003';