SELECT * FROM ecommerce_customer_behavior;

--Rename Table_name
ALTER TABLE ecommerce_customer_behavior
RENAME TO fact_table;

SELECT * FROM fact_table;

---Fixing Data Type
ALTER TABLE fact_table
ALTER COLUMN customer_id
TYPE INTEGER
USING customer_id::INTEGER;


ALTER TABLE fact_table
ALTER COLUMN age
TYPE SMALLINT
USING age::SMALLINT;


ALTER TABLE fact_table
ALTER COLUMN gender
TYPE VARCHAR(10)
USING gender::VARCHAR;

		
ALTER TABLE fact_table
ALTER COLUMN location
TYPE VARCHAR
USING location::VARCHAR;


ALTER TABLE fact_table
ALTER COLUMN product_category
TYPE VARCHAR
USING product_category::VARCHAR;


ALTER TABLE fact_table
ALTER COLUMN purchase_amount
TYPE NUMERIC(10,2)
USING purchase_amount::NUMERIC(10,2);


ALTER TABLE fact_table
ALTER COLUMN time_spent_on_website_min
TYPE SMALLINT
USING time_spent_on_website_min::SMALLINT;

 
ALTER TABLE fact_table
ALTER COLUMN device_type
TYPE VARCHAR
USING device_type::VARCHAR;


ALTER TABLE fact_table
ALTER COLUMN payment_method
TYPE VARCHAR
USING payment_method::VARCHAR;


ALTER TABLE fact_table
 ALTER COLUMN discount_availed
TYPE BOOLEAN
USING discount_availed::BOOLEAN;


ALTER TABLE fact_table
ALTER COLUMN number_of_items_purchased
TYPE INTEGER
USING number_of_items_purchased::INTEGER;|


ALTER TABLE fact_table
ALTER COLUMN return_customer
TYPE BOOLEAN
USING return_customer::BOOLEAN;


ALTER TABLE fact_table
ALTER COLUMN review_score_1_5
TYPE INTEGER
USING review_score_1_5::INTEGER;


ALTER TABLE fact_table
ALTER COLUMN delivery_time_days
TYPE INTEGER
USING delivery_time_days::INTEGER;


ALTER TABLE fact_table
ALTER COLUMN subscription_status
TYPE VARCHAR
USING subscription_status::VARCHAR;


ALTER TABLE fact_table
ALTER COLUMN customer_satisfaction
TYPE VARCHAR(20)
USING customer_satisfaction::VARCHAR;



SELECT
ordinal_position AS "#",
column_name,
data_type,
character_maximum_length AS max_length
FROM information_schema.columns
WHERE table_name   = 'fact_table'
  AND table_schema = 'public'
ORDER BY ordinal_position;



--- Add the new column
ALTER TABLE fact_table
ADD COLUMN is_return_customer INTEGER DEFAULT 0;

-- Step 2: Update values based on return_customer column
UPDATE fact_table
SET is_return_customer = CASE 
    WHEN return_customer = true  THEN 1
    ELSE 0
END;

-- Step 3: Verify
SELECT return_customer, is_return_customer, COUNT(*) AS total
FROM fact_table
GROUP BY return_customer, is_return_customer
ORDER BY is_return_customer;


SELECT * FROM fact_table;


ALTER TABLE fact_table
ADD COLUMN is_subscribed  INTEGER DEFAULT 0;

-- Step 2: Update values based on return_customer column
UPDATE fact_table
SET is_subscribed = CASE 
    WHEN subscription_status = 'Premium' THEN 1
    ELSE 0
END;