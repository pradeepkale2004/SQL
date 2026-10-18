CREATE DATABASE ecommerce_db
use ecommerce_db
CREATE TABLE products(product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
price DECIMAL(10,2),
quantity INT,
city VARCHAR(50),
status Varchar(20));

Select * from products;
Insert into products(product_id,product_name,category,brand,price,quantity,city,status)
Values(201,'Galaxy M55','Mobile', 'Samsung', 32000, 15,'Pune', 'Available');
Insert into products(product_id,product_name,category,brand, price, quantity ,city, status)
Values(202, 'iPhone 15', 'Mobile', 'Apple', 65000,8,'Pune', 'Available');
Insert into products(product_id,product_name,category,brand, price, quantity ,city, status)
Values(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000,20,'Pune', 'Available');
Insert into products(product_id,product_name,category,brand, price, quantity ,city, status)
Values(204, 'Inspiron 15', 'Laptop', 'Dell', 58000,20,'Nashik', 'Available');
Insert into products(product_id,product_name,category,brand, price, quantity ,city, status)
Values(205, 'Idea Pad Slim 3', 'Laptop', 'Lenovo', 45000,20,'Mumbai', 'Available');
Insert into products(product_id, product_name, category, brand, price, quantity, city, status)
Values(206,'Galaxy Watch 6', 'Watch','Samsung',22000, 4,'Pune','Out of Stock');
Insert into products(product_id, product_name, category, brand, price, quantity, city, status)
Values(207,'Apple Watch SE', 'Watch','Apple',30000, 10,'Mumbai','Available');
Insert into products(product_id, product_name, category, brand, price, quantity, city, status)
Values(208,'Redmi pad', 'Tablet','Xiaomi',24000,18,'Pune','Available');
Insert into products(product_id, product_name, category, brand, price, quantity, city, status)
Values(209,'One Plus Pad', 'Tablet','One Plus',35000, 5,'Nashik','Available');
Insert into products(product_id, product_name, category, brand, price, quantity, city, status)
Values(210,'Bluetooth Speaker', 'Accessories','JBL',7000, 25,'Mumbai','Available');

SELECT * from products;
SELECT product_name from products;
SELECT product_name, price from products;
SELECT product_name, category, brand, price from products;
SELECT * from products where status = 'Available' and city ='Pune'
SELECT * from products where status ='Available' and city ='Mumbai'
SELECT * from products where category ='Mobile';
SELECT * from products where category = 'Laptop';
SELECT * from products where price > 30000;
SELECT * from products where price < 30000;
SELECT * from products where price = 30000;
SELECT * from products where price >= 45000;
SELECT * from products where price <= 30000;
SELECT * from products where quantity > 10;
SELECT * from products where quantity < 10;

SELECT * from products where city = 'Pune' and category='mobile';
SELECT * from products where city ='Mumbai' and status ='Available';
SELECT * from products where price >30000 and quantity >5;
SELECT * from products where price >=30000 and price <=60000
SELECT * from products where city = 'Pune' Or city= 'Mumbai';
SELECT * from products where category ='Mobile' or category ='Laptop'
SELECT * from products where quantity <10 or price > 50000;
SELECT * from products where category ='Mobile' and price >50000;
SELECT * from products where brand ='Samsung' or brand ='Apple';
SELECT * from products where city = 'Pune' and status ='Available' and quantity > 10;
SELECT * from products where price between 25000 and 50000
SELECT * from products where quantity between 5 and 15
SELECT * from products where category in ('Mobile','Laptop','Tablet');
SELECT * from products where city in ('Pune', 'Mumbai');
SELECT * from products where brand NOT IN ('Samsung');
SELECT * from products where status NOT IN ('Out of Stock');
SELECT * from products where price NOT IN (30000);
SELECT * from products where product_name LIKE'Galaxy%';
SELECT * from products where product_name LIKE ('%Pad%');
SELECT * from products where category ='Mobile' and price > 30000 or quantity >15;

UPDATE products set price = 34000 where product_name = 'Galaxy M55'
SELECT * from products;
UPDATE products set quantity = 12 where product_name = 'iPhone 15';
UPDATE products set status = 'Available' where product_name ='Galaxy Watch 6'
UPDATE products set price = price + 2000;
UPDATE products set quantity = quantity + 5 where city ='Pune' 
UPDATE products set status ='Out of Stock' Where quantity < 10;

DELETE products where product_id =210
DELETE products where price < 8000
DELETE products where status ='Out of Stock' and quantity <5;
DELETE products where category = 'Tablet' and price > 30000