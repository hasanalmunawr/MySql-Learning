desc seller;

SHOW CREATE TABLE seller;

-- menambah atau menghapus index
ALTER TABLE seller
ADD column nama2 varchar(50) NOT NULL,
ADD index nama_index2 (nama2);

ALTER TABLE seller
DROP INDEX nama_index;

SELECT * FROM seller WHERE nama = 'h';

INSERT INTO seller(nama,email,nama2)
	VALUES('hasan','almunawar07@gmail.com','adib');
    
    
    

