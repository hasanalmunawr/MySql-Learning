CREATE TABLE products (
id VARCHAR(10) NOT null,
nama VARCHAR(50) NOT NULL,
deskripsi TEXT,
harga INT UNSIGNED NOT NULL,
quanitity INT UNSIGNED NOT NULL DEFAULT 0,
create_at TIMESTAMP DEFAULT current_timestamp
) engine = InnoDB;

INSERT INTO products(id, nama, harga, quanitity)
values ('P001', 'mie ayam', 10000, 100);


alter table products
add primary key(id);

describe products;

select * from products where quanitity >= 100;

select * from products where harga = 10000;

alter table products
add column category enum ('makanan', 'minuman', 'lain-lain');

alter table products
modify category enum('Makanan', 'Minuman', 'Lain-lain')
after nama;

update products
set category = 'makanan'
where id = 'P003';

INSERT INTO products(id, nama,deskripsi, harga, quanitity)
values ('P002', 'mie ayam bakso','mie ayam + bakso',  15000, 100);

INSERT INTO products(id, nama, harga, quanitity)
values ('P003', 'mie ayam ceker', 17000, 100);

update products
set deskripsi = 'mie ayam + ceker'
where id = 'p003';

INSERT INTO products(id, nama, harga, quanitity)
values ('P004', 'mie ayam lava', 19000, 100);

update products
set category = 'makanan',
	deskripsi = 'mie ayam + kuah special pedas'
where id = 'p004';

INSERT INTO products(id, nama,deskripsi, harga, quanitity)
values ('P005', 'mie ayam special','mie ayam + paket lengkap',  15000, 100);

update products
set category = 'makanan',
	harga = harga + 5000
where id = 'p005';

select * from products;

INSERT INTO products(id, nama, harga, quanitity)
values ('P007', 'mie ayam ceker', 17000, 100);

delete from products
where id = 'p007';
