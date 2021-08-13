-- ARTIST TABLE
INSERT INTO artist(name)
VALUES('Jonah'), ('Zach'), ('Jake');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- EMPLOYEE TABLE
SELECT e.first_name, e.last_name
FROM employee e
WHERE e.city = 'Calgary';

SELECT * FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE
SELECT COUNT(*)
FROM invoice 
WHERE billing_country = 'USA'

SELECT *
FROM invoice 
ORDER BY total DESC

SELECT *
FROM invoice 
ORDER BY total ASC

SELECT *
FROM invoice 
WHERE total > 5

SELECT SUM(total)
FROM invoice

-- JOIN QUERIES
SELECT *
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > .99;

SELECT i.invoice_date, c.first_name, c.last_name, total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id