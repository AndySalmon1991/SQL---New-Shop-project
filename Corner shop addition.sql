	INSERT INTO 

	inventory(product_description, category, pack_size, price, inv_quantity)

	VALUES

	('onions','fresh produce',6,1,3),

	('pepsi','drinks',6,3,1),

	('opal fruits','sweets',1,0.5,0);
	 
	INSERT INTO

	inbound(delivery_date,ProductID,quantity)

	VALUES

	('2025-01-01',1,3),

	('2025-01-02',2,10),

	('2025-01-03',1,6);
	 
	INSERT INTO

	customer(first_name,last_name,phone_number,email,loyalty_scheme,loyalty_points)

	VALUES

	('Andrew','Salmon','11111111111','as@yes.co.uk',TRUE,3),

	('Rohit','Sharma','22222222222','rs@yes.co.uk',FALSE,NULL),

	('Gabby','Kow','33333333333','gk@yes.co.uk',TRUE,5);
	 
	INSERT INTO

	sales(sale_date,ProductID,quantity,CustomerID)

	VALUES

	('2025-02-19',1,1,1),

	('2025-02-20',2,2,2),

	('2025-02-20',3,3,3);
	 
	ALTER TABLE customer MODIFY phone_number VARCHAR(11);
	 