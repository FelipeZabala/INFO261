USE sakila;

/* 1 SELECT title FROM film LIMIT 10;  */

/* 2 SELECT DISTINCT release_year FROM film; */

/* 3 SELECT title, rental_duration FROM film WHERE rental_duration >4; */

/* SELECT customer_id, rental_id, amount, payment_date 
 FROM payment 
 WHERE payment_date
 BETWEEN '2005-07-01' AND '2005-08-01' LIMIT 10; */
 
# SELECT COUNT(*) FROM customer;

/* SELECT customer_id,COUNT(rental_id) as Numero_Arriendos 
FROM rental 
GROUP BY customer_id LIMIT 5; */

SELECT MAX(total) FROM (SELECT customer_id,count(*) as total FROM rental GROUP BY customer_id) as t1;