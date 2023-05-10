/* 
Part A
1) Which product categories have the highest sales?
2) Which categories have the highest shipping costs?
3) Which of these categories, taking shipping cost alone, has the highest profit margin?
4) We believe that the products with the best reviews are the ones with the best sales. Is this really the case?
5) What is the payment type preferred by customers? and Does it match as the payment type with the highest cash flow?
*/

-- 1) Which product categories have the highest sales?
SELECT 
	products.product_category_name,
	product_category_translation.product_category_name_english, 
	SUM(items.price)+ SUM(items.freight_value) AS total_sales ,
	COUNT(items.price) AS count_sales
FROM 
	products
LEFT JOIN 
	items
ON
	products.product_id =  items.product_id
LEFT JOIN 
	product_category_translation
ON 
	products.product_category_name = product_category_translation.product_category_name
WHERE 
	products.product_category_name IS NOT NULL
GROUP BY 
	products.product_category_name,
	product_category_translation.product_category_name_english
ORDER BY 
	count_sales DESC
LIMIT 10;

-- 2) Which categories have the highest shipping costs?
SELECT
	products.product_category_name,
	product_category_translation.product_category_name_english, 
	SUM(items.freight_value) AS shipping_costs
FROM 
	products
LEFT JOIN 
	items
ON
	products.product_id =  items.product_id
LEFT JOIN 
	product_category_translation
ON 
	products.product_category_name = product_category_translation.product_category_name
WHERE 
	products.product_category_name IS NOT NULL
GROUP BY 
	products.product_category_name,
	product_category_translation.product_category_name_english
ORDER BY 
	shipping_costs DESC
LIMIT 10;

--3) Which of these categories, taking shipping cost alone, has the highest profit margin?
SELECT 
	products.product_category_name,
	product_category_translation.product_category_name_english, 
	SUM(items.price) - SUM(items.freight_value) AS total_sales
FROM 
	products
LEFT JOIN 
	items
ON
	products.product_id =  items.product_id
LEFT JOIN 
	product_category_translation
ON 
	products.product_category_name = product_category_translation.product_category_name
WHERE 
	products.product_category_name IS NOT NULL
GROUP BY 
	products.product_category_name,
	product_category_translation.product_category_name_english
ORDER BY 
	total_sales DESC
LIMIT 10;

--4) We believe that the products with the best reviews are the ones with the best sales. Is this really the case?
SELECT 
	reviews.review_score,
	sum(items.price) + sum(items.freight_value) as sales
FROM 
	reviews
RIGHT JOIN 
	orders
ON
	reviews.order_id = orders.order_id
LEFT JOIN 
	items
ON
	orders.order_id = items.order_id
LEFT JOIN
	products
ON
	items.product_id = products.product_id
WHERE 
	review_score IS NOT NULL
GROUP BY
	reviews.review_score
ORDER BY 
	review_score DESC;
	
--5) What is the payment type preferred by customers? and Does it match as the payment type with the highest cash flow?
SELECT 
	payments.payment_type,
	count(payments.payment_value) as pays,
	(count(payments.payment_value)* 100.0 / (SELECT count(*) FROM payments)) as percentage
FROM 
	payments
GROUP BY 
	payments.payment_type
ORDER BY 
	percentage DESC;

SELECT 
	payments.payment_type,
	sum(payments.payment_value) as pays
FROM 
	payments
GROUP BY 
	payments.payment_type
ORDER BY
	pays DESC;

----

SELECT 
	products.product_id, 
	product_category_translation.product_category_name_english,
	products.product_name_lenght,
	products.product_description_lenght,
	products.product_photos_qty,
	products.product_weight_g,
	products.product_length_cm,
	products.product_height_cm,
	products.product_width_cm
FROM 
	products 
LEFT JOIN
	product_category_translation 
ON 
	product_category_translation.product_category_name = products.product_category_name;
	
