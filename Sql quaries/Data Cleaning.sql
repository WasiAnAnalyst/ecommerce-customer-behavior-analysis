SELECT * FROM fact_table;


---Data Cleaning
---OVERVIEW — Total row & column count
SELECT COUNT(*) AS total_rows,
COUNT(DISTINCT customer_id) as uniqe_customer
FROM fact_table;



---null value check
SELECT 
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS null_restaurant_name,
    SUM(CASE WHEN product_category IS NULL THEN 1 ELSE 0 END) AS null_product_category,
    SUM(CASE WHEN purchase_amount IS NULL THEN 1 ELSE 0 END) AS null_purchase_amount,
    SUM(CASE WHEN time_spent_on_website_min IS NULL THEN 1 ELSE 0 END) AS null_time_spent_on_website_min,
    SUM(CASE WHEN device_type IS NULL THEN 1 ELSE 0 END) AS null_device_type,
    SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS null_payment_method,
    SUM(CASE WHEN discount_availed IS NULL THEN 1 ELSE 0 END) AS null_discount_availed,
	SUM(CASE WHEN number_of_items_purchased IS NULL THEN 1 ELSE 0 END) null_number_of_items_purchased,
	SUM(CASE WHEN return_customer IS NULL THEN 1 ELSE 0 END) AS null_return_customer,
	SUM(CASE WHEN review_score_1_5 IS NULL THEN 1 ELSE 0 END) AS null_review_score_1_5,
	SUM(CASE WHEN delivery_time_days IS NULL THEN 1 ELSE 0 END) AS null_delivery_time_days,
	SUM(CASE WHEN subscription_status IS NULL THEN 1 ELSE 0 END) AS null_subscription_status,
	SUM(CASE WHEN customer_satisfaction IS NULL THEN 1 ELSE 0 END) AS null_customer_satisfaction
FROM fact_table;



---Duplicate Check
SELECT 
    customer_id, 
    age, 
    gender, 
    location,
	product_category,
	purchase_amount,
	time_spent_on_website_min,
	device_type,
	payment_method,
	discount_availed,
	number_of_items_purchased,
	return_customer,
	review_score_1_5,
	delivery_time_days,
	subscription_status,
	customer_satisfaction,
    COUNT(*) AS "CNT" 
FROM fact_table
GROUP BY 
   customer_id, 
    age, 
    gender, 
    location,
	product_category,
	purchase_amount,
	time_spent_on_website_min,
	device_type,
	payment_method,
	discount_availed,
	number_of_items_purchased,
	return_customer,
	review_score_1_5,
	delivery_time_days,
	subscription_status,
	customer_satisfaction
HAVING COUNT(*) > 1;



---Duplicate customer_id
SELECT
customer_id,
COUNT(*) AS occurrences
FROM fact_table
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;


---OUTLIER CHECK — Numeric columns (min, max, avg)
SELECT
MIN(age)  AS age_min,
MAX(age) AS age_max,
ROUND(AVG(age), 1) AS age_avg
FROM fact_table;


CREATE VIEW purchase_amount_sts AS
SELECT 
MIN(purchase_amount) AS min_amount,
MAX(purchase_amount) AS max_amount,
ROUND(AVG(purchase_amount),2) AS avg_amount
FROM fact_table;


CREATE VIEW quantity_sold AS
SELECT MIN(number_of_items_purchased) AS min_sold,
MAX(number_of_items_purchased) AS mx_sold,
ROUND(AVG(number_of_items_purchased),1) AS avg_sold
FROM fact_table;


CREATE VIEW time_spent_sts AS 
SELECT
MIN(time_spent_on_website_min) AS time_spent_min,
MAX(time_spent_on_website_min) AS time_spent_max,
ROUND(AVG(time_spent_on_website_min), 1) AS time_spent_avg
FROM fact_table;


CREATE VIEW review_score_sts AS 
SELECT 
MIN(review_score_1_5) AS review_min,
MAX(review_score_1_5) AS review_max,
ROUND(AVG(review_score_1_5), 2) AS review_avg
FROM fact_table;


CREATE VIEW delivery_time_sts AS 
SELECT
MIN(delivery_time_days) AS delivery_min,
MAX(delivery_time_days) AS delivery_max,
ROUND(AVG(delivery_time_days), 1) AS delivery_avg
FROM fact_table;


--- CATEGORICAL VALUE CHECK — Unexpected values
-- Gender
SELECT gender, COUNT(*) AS count
FROM fact_table
GROUP BY gender
ORDER BY count DESC;


---location
SELECT location, COUNT(*) AS count
FROM fact_table
GROUP BY location
ORDER BY count DESC;


---product_category
SELECT product_category, COUNT(*) AS count
FROM fact_table
GROUP BY product_category
ORDER BY count DESC;


---Device Type 
SELECT device_type, COUNT(*) AS count
FROM fact_table
GROUP BY device_type
ORDER BY count DESC;


-- Payment Method
SELECT payment_method, COUNT(*) AS count
FROM fact_table
GROUP BY payment_method
ORDER BY count DESC;


-- Subscription Status
SELECT subscription_status, COUNT(*) AS count
FROM fact_table
GROUP BY subscription_status
ORDER BY count DESC;


-- Customer Satisfaction
SELECT customer_satisfaction, COUNT(*) AS count
FROM fact_table
GROUP BY customer_satisfaction
ORDER BY count DESC;


---WHITESPACE / HIDDEN CHARACTER CHECK
UPDATE fact_table
SET gender = TRIM(gender);


UPDATE fact_table
SET location = TRIM(location);


UPDATE fact_table
SET device_type = TRIM(device_type);

UPDATE fact_table
SET payment_method = TRIM(payment_method);


UPDATE fact_table
SET product_category = TRIM(product_category);


UPDATE fact_table
SET subscription_status = TRIM(subscription_status); 


UPDATE fact_table
SET customer_satisfaction = TRIM(customer_satisfaction); 


---BOOLEAN CHECK
--discount_availed
SELECT discount_availed, COUNT(*) AS count
FROM fact_table
GROUP BY discount_availed;


---return_customer
SELECT return_customer, COUNT(*) AS count
FROM fact_table
GROUP BY return_customer;


---CONSISTENCY CHECK
---High satisfaction but very low review score 
SELECT COUNT(*) AS suspicious_rows
FROM fact_table
WHERE customer_satisfaction = 'High'
AND review_score_1_5 = 1;
-----(FIND 672 ROWS)


-- Low satisfaction but very high review score 
SELECT COUNT(*) AS suspicious_rows
FROM fact_table
WHERE customer_satisfaction = 'Low'
  AND review_score_1_5 = 5;
---(FIND 667 ROWS)


SELECT * FROM fact_table
WHERE customer_satisfaction = 'High'
AND review_score_1_5 = 1
ORDER BY customer_id;


SELECT * FROM fact_table
WHERE customer_satisfaction = 'Low'
AND review_score_1_5 = 5
ORDER BY customer_id;



SELECT 
    customer_satisfaction,
    review_score_1_5,
    COUNT(*) AS total_rows
FROM fact_table
GROUP BY customer_satisfaction, review_score_1_5
ORDER BY customer_satisfaction, review_score_1_5;

---(No internal correletion between Customer_satisfaction & review_score)

