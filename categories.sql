-- ONE TO MANY RELATIONSHIP

ALTER TABLE products
DROP COLUMN category;

SHOW CREATE TABLE categories;

ALTER TABLE categories
ADD PRIMARY KEY (id);

ALTER TABLE products
ADD COLUMN id_category VARCHAR(100);

INSERT INTO categories (id, name)
VALUES('C001', 'Makanan'),
		('C002', 'Minuman'),
        ('C003', 'Lain-lainya');
        
SELECT * FROM categories;

ALTER TABLE products
ADD CONSTRAINT fk_product_customer 
	FOREIGN KEY (id_category) REFERENCES categories (id);
    
SELECT * FROM products;

UPDATE products
SET id_category = 'C001'
WHERE id IN ('P001', 'P002', 'P003', 'P004', 'P005', 'P006');

UPDATE products
SET id_category = 'C002'
WHERE id IN ('P007', 'P008', 'P009');

UPDATE products
SET id_category = 'C003'
WHERE id IN ('P014', 'P015');

SELECT p.id, p.nama, c.name, p.harga
FROM categories AS c
JOIN products AS p ON (p.id_category = c.id);
    

