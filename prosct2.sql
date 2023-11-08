show engines;

show tables;

desc products;

select * from products;

select id as Kode,
	p.nama as Nama,
    p.category as Kategori,
    p.deskripsi as Deskripsi,
    p.harga as Harga,
    p.quanitity as Jumlah
from products as p;

insert into products(id, category, nama, harga, quanitity)
values ('P006', 'makanan', 'bakso rusuk', 24000, 78),
	('P007', 'Minuman', 'Es jeruk', 7000, 120),
	('P008', 'Minuman', 'Es teh', 5000, 132),
	('P009', 'Minuman', 'Es campur', 7000, 89),
	('P010', 'Makanan', 'Bakso Malang', 25000, 57),
	('P011', 'Makanan', 'Bakso Solo iga', 28000, 15),
	('P012', 'Makanan', 'Sate paddang', 17000, 35),
	('P013', 'Lain-lain', 'Roti jalak biadab', 12000, 23),
	('P014', 'Lain-lain', 'kerupuk balado', 1000, 45),
	('P015', 'Lain-lain', 'es krim', 10000, 13);
    
    SELECT * FROM products WHERE quanitity < 50;
    
    SELECT * FROM products WHERE harga >= 20000;
    
    SELECT * FROM products WHERE category != 'makanan';
    
    SELECT * FROM products WHERE category = 'makanan' AND harga <= 15000;
    
    SELECT * FROM products WHERE quanitity <= 50 OR harga <= 15000;
    
    SELECT * FROM products WHERE (quanitity <= 50 OR harga <= 15000) AND category = 'makanan';
    
    SELECT * FROM products WHERE quanitity <= 50 OR (harga <= 15000 AND category = 'makanan');
    
    SELECT * FROM products WHERE nama LIKE 'mie%';
    
    SELECT * FROM products WHERE nama LIKE '%iga';
    
    SELECT * FROM products WHERE nama LIKE '%bakso%';
    
    SELECT * FROM products WHERE deskripsi IS NULL;
    
    SELECT * FROM products WHERE deskripsi IS NOT NULL;
    
    SELECT * FROM products WHERE harga BETWEEN 15000 AND 20000;
    
    SELECT * FROM products WHERE harga NOT BETWEEN 15000 AND 20000;
    
    SELECT * FROM products WHERE category IN('makanan', 'Lain-lain');
    
    SELECT * FROM products ORDER BY harga;
    
    SELECT * FROM products ORDER BY category ASC, harga DESC;
    
    -- SELECT * FROM products ORDER BY harga desc LIMIT 3;-- 
    
    SELECT distinct category FROM products;
    
    SELECT distinct harga FROM products;
    
    SELECT 1 + 1 as hasil;
    
    SELECT * FROM products as hasilK WHERE harga DIV 1000 > 10 ;
    
    SELECT harga DIV 1000 as 'price in K' FROM products;
    
    -- SELECT harga DIV 1000 <= 20 as 'price down 20' FROM product order by harga; 
    
    SELECT id, nama, harga, harga DIV 1000 AS 'new harga' 
    FROM product; 
    
    SELECT id, nama, harga FROM products order by harga desc,
     harga DIV 1000 <= 20;
    
    select * from products;
    
    SELECT id, cos(harga), sin(harga), TAN(harga) FROM products;
    
 -- STRING FUNCTION
 SELECT id,
	LOWER(nama) as 'nama kecil',
    UPPER(nama) as 'nama besar',
    LENGTH(nama) as 'panjang nama'
    FROM products;
    
-- flow CASE
SELECT id,
	category,
	CASE category
    WHEN 'makanan' THEN 'gurih dan enak'
    WHEN 'minuman' THEN 'segar'
    ELSE 'apa ituuu'
    END AS 'Category'
FROM products;

-- FLow If
SELECT id,
	harga,
    if(harga <= 10000, 'Murah', 'mahal')
    AS 'Mahal kah ini'
FROM products;

SELECT id,
	harga,
    if(harga DIV 1000 <= 10, 'Murah banget',
    if(harga <= 15, 'murah', 
    if(harga >= 20 , 'mahal', 'mahal banget') 
   )) AS 'Mahal kah ini'
FROM products;

-- Flow ifNull
SELECT id, nama, IFNULL(deskripsi, 'Kosong')
FROM products;

-- AGREE function
 SELECT COUNT(id) AS 'Total produk' FROM products;
 
 SELECT AVG(harga) AS 'rata-rata harga' FROM products;
 
 SELECT MAX(harga) AS 'max harga' FROM products;
 
 SELECT Min(harga) AS 'min harga' FROM products;
 
 SELECT SUM(quanitity) AS 'stok barang' FROM products;
 
 SELECT * FROM products;
 
 -- Grub By
 SELECT category,
	COUNT(id) as "total product"
FROM products
GROUP BY category;

-- Having Clause
SELECT category,
	COUNT(id) as total
FROM products
GROUP BY category
HAVING total > 4;

-- Check Constrait
-- Manambah / menghapus Chech Constrait
ALTER TABLE products
	 ADD CONSTRAINT price_check CHECK ( harga >= 1000);
 
    
    
    
    
    