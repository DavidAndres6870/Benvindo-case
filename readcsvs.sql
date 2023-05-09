CREATE TABLE Product_category_translation(
product_category_name VARCHAR(50),
product_category_name_english VARCHAR(50),
PRIMARY KEY(product_category_name)
);

CREATE TABLE Products (
product_id VARCHAR(32),
product_category_name VARCHAR(50) REFERENCES Product_category_translation(product_category_name),
product_name_lenght INTEGER,
product_description_lenght INTEGER,
product_photos_qty INTEGER,
product_weight_g INTEGER,
product_length_cm INTEGER,
product_height_cm INTEGER,
product_width_cm INTEGER,
PRIMARY KEY (product_id)
);


CREATE TABLE Orders(
order_id VARCHAR(32),
customer_id	VARCHAR(32),
order_status VARCHAR(12),
order_purchase_timestamp TIMESTAMP,
order_approved_at TIMESTAMP,
order_delivered_carrier_date TIMESTAMP,
order_delivered_customer_date TIMESTAMP,
order_estimated_delivery_date DATE,
PRIMARY KEY(order_id)
);

CREATE TABLE Reviews (
review_id VARCHAR(32),
order_id VARCHAR(32) REFERENCES Orders(order_id),
review_score INTEGER,
review_comment_title VARCHAR(35),
review_comment_message VARCHAR(270),
review_creation_date DATE,
review_answer_timestamp TIMESTAMP
);

CREATE TABLE Payments(
order_id VARCHAR(32) REFERENCES Orders(order_id),
payment_sequential INTEGER, 
payment_type VARCHAR(20),
payment_installments INTEGER, 
payment_value FLOAT
);

CREATE TABLE Items(
order_id VARCHAR(32) REFERENCES Orders(order_id),
order_item_id INTEGER,
product_id VARCHAR(32) REFERENCES Products(product_id),
seller_id VARCHAR(32),
shipping_limit_date TIMESTAMP,
price FLOAT, 
freight_value FLOAT
);


COPY Product_category_translation(
	product_category_name,
	product_category_name_english
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\product_category_name_translation.csv'

DELIMITER','
CSV HEADER;

COPY Products(
	product_id,
	product_category_name,
	product_name_lenght,
	product_description_lenght,
	product_photos_qty,
	product_weight_g,
	product_length_cm,
	product_height_cm,
	product_width_cm
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\olist_products_dataset.csv'
DELIMITER','
CSV HEADER;


COPY Orders(
	order_id,
	customer_id,
	order_status,
	order_purchase_timestamp,
	order_approved_at,
	order_delivered_carrier_date,
	order_delivered_customer_date,
	order_estimated_delivery_date
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\olist_orders_dataset.csv'
DELIMITER','
CSV HEADER;

COPY Payments(
	order_id,
	payment_sequential,
	payment_type,
	payment_installments,
	payment_value
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\olist_order_payments_dataset.csv'
DELIMITER','
CSV HEADER;

COPY Reviews( 
	review_id,
	order_id,
	review_score,
	review_comment_title,
	review_comment_message,
	review_creation_date,
	review_answer_timestamp
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\olist_order_reviews_dataset.csv'
DELIMITER','
CSV HEADER;

COPY Items(
	order_id,
	order_item_id,
	product_id,
	seller_id, 
	shipping_limit_date, 
	price, 
	freight_value
)
FROM 'C:\Users\david\Desktop\Portfolio\challenge1\Archivos - Data Challenge\olist_order_items_dataset.csv'
DELIMITER','
CSV HEADER;


