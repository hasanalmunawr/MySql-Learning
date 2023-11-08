create table guestBooks (
id INT not null auto_increment,
email varchar(100) not null,
title varchar(200) not null,
content text,
primary key(id)
) engine = InnoDB;

insert into guestbooks(email, title, content)
	values('email12@gmail.com', 'hello', 'hello'),
    ('email13@gmail.com', 'hello', 'hello'),
    ('hasan01@gmail.com', 'hello', 'hello');
    
select * from guestbooks;

select  email from customers
union -- otomatis ngedisting
select  email from guestbooks;

select  email from customers
union all
select  email from guestbooks;

-- pengen mengetahui berapa kali email ini datang

select ec.email , count(ec.email) from (
select  email from customers
union all
select  email from guestbooks) as ec
group by ec.email;


-- melakukan query intresct
select distinct email from customers
where email IN(select distinct email from guestbooks);

-- menggunakan join
