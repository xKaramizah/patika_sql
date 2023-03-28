-- film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film 
WHERE length >
(
	SELECT AVG(length) FROM film 
);

-- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = 
(
	SELECT Max(rental_rate) FROM film
);

-- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film
WHERE 
	rental_rate = (SELECT Min(rental_rate) FROM film)
	AND
	replacement_cost = (SELECT Min(replacement_cost) FROM film)

-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC
	-- VEYA
SELECT customer.first_name AS "Müşteri ID", COUNT(*) AS "Alışveriş Sayısı" FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(*) DESC;
