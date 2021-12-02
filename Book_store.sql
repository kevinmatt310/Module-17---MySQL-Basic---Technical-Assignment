--show database--
SHOW DATABASES;
-- Create Database --
CREATE DATABASE;
-- Use database--
USE Book_store;
--show table--
SHOW TABLES;
--create table--
CREATE TABLE books(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR (100) NOT NULL,
    author2 VARCHAR (100),
    author3 VARCHAR (100),
    title VARCHAR (100),
    description,
    place_sell (3),
    stock INT DEFAULT 0,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
--alter table--
ALTER TABLE books
ADD COLUMN (
    price INT DEFAULT 0,
    status ENUM ( 'available', 'out of stock', 'limited'),
    DROP column place_sell,
);

SELECT *from books;
INSERT INTO books 
(author1, title, description, stock, creation_date, price, status)
VALUES  ('Kevin','Cintaku bersemi di kelas', 'Buku 1', 23,'2021/12/21 12:34:56',123000,'limited'),
        ('Iksan','Marmut Merah Jambu', 'Buku 2' 34,'2021/12/12 10:11:12',45000,'available'),
        ('Ibnu','Ada apa dengan Ibnu', 'Buku 3' 45,'2021/11/21 08:09:10',67000,'limited');

--select table--
SELECT *FROM books;
--alias--
SELECT id AS ID,
author1 AS A1,
author2 AS A2,
author3 AS A3
FROM books;
--select where--
SELECT *WHERE id = 1;
--select operator AND--
SELECT *FROM books WHERE id = 1 AND author1 = 'Kevin';
--select operator OR--
SELECT *FROM books WHERE id = 1 AND author2 = 'Iksan';
--select operator NOT--
SELECT *FROM books WHERE id = 1;
--order by--
SELECT *FROM Book_store ORDER BY id ASC;
--add limit--
SELECT *FROM books LIMIT 2;
--update--
UPDATE books SET author1 = 'Transformer Asik', price = 100000;
WHERE id = 1;
--delete--
DELETE row WHERE id = 1;






