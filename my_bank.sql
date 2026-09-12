SHOW DATABASES;
USE my_bank;
select * from customer;
create database myform;
use myform;
CREATE TABLE form (
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    address VARCHAR(255)
);
ALTER TABLE form
ADD language VARCHAR(50);
ALTER TABLE form
ADD languageknown VARCHAR(50);

ALTER TABLE form
ADD age INT;
select *from form;

CREATE DATABASE attendance_db CHARACTER SET utf8mb4;
