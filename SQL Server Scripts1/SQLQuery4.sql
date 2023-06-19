/*SELECT first_name,last_name FROM sales.customers;

SELECT first_name,last_name, email FROM sales.customers;

SELECT first_name,last_name FROM sales.customers ORDER BY first_name;

SELECT first_name,last_name FROM sales.customers ORDER BY first_name DESC;

SELECT product_name, list_price FROM production.products ORDER BY list_price, product_name 
OFFSET 10 ROWS FETCH FIRST 10 ROWS ONLY;

SELECT TOP 3 WITH TIES product_name, list_price FROM production.products
ORDER BY list_price DESC;

SELECT DISTINCT city, state, zip_code FROM sales.customers;

SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products WHERE product_name LIKE '%Cruiser%' ORDER BY list_price;

SELECT customer_id,first_name,last_name,phone FROM sales.customers WHERE phone IS NOT NULL 
ORDER BY first_name,last_name;

SELECT * FROM production.products WHERE (brand_id = 1 OR brand_id = 2) AND list_price > 1000
ORDER BY brand_id;

SELECT product_name, brand_id, list_price FROM production.products
WHERE(brand_id = 1 OR brand_id = 2) AND list_price > 500 ORDER BY brand_id;

SELECT product_name,list_price FROM production.products WHERE 
product_id IN (SELECT product_id FROM production.stocks WHERE
store_id = 1 AND quantity >= 30) ORDER BY product_name;

SELECT order_id,customer_id,order_date,order_status FROM sales.orders
WHERE order_date BETWEEN '20170115' AND '20170117' ORDER BY order_date;

SELECT c.customer_id,first_name,last_name,order_id FROM sales.customers c INNER JOIN 
sales.orders o ON o.customer_id = c.customer_id;

SELECT product_name,category_name,brand_name,list_price
FROM production.products p INNER JOIN production.categories c ON c.category_id = p.category_id
INNER JOIN production.brands b ON b.brand_id = p.brand_id ORDER BY product_name DESC;

SELECT p.product_id,product_name,order_id FROM production.products p LEFT JOIN sales.order_items o 
ON o.product_id = p.product_id AND o.order_id = 100 ORDER BY order_id DESC;

SELECT product_name, order_id FROM sales.order_items o RIGHT JOIN production.products p 
ON o.product_id = p.product_id WHERE order_id IS NULL ORDER BY product_name;

SELECT
    s.store_id,
    p.product_id,
    ISNULL(sales, 0) sales
FROM
    sales.stores s
CROSS JOIN production.products p
LEFT JOIN (
    SELECT
        s.store_id,
        p.product_id,
        SUM (quantity * i.list_price) sales
    FROM
        sales.orders o
    INNER JOIN sales.order_items i ON i.order_id = o.order_id
    INNER JOIN sales.stores s ON s.store_id = o.store_id
    INNER JOIN production.products p ON p.product_id = i.product_id
    GROUP BY
        s.store_id,
        p.product_id
) c ON c.store_id = s.store_id
AND c.product_id = p.product_id
WHERE
    sales IS NULL
ORDER BY
    product_id,
    store_id;

SELECT
    c1.city,
	c1.first_name + ' ' + c1.last_name customer_1,
    c2.first_name + ' ' + c2.last_name customer_2
FROM
    sales.customers c1
INNER JOIN sales.customers c2 ON c1.customer_id <> c2.customer_id
AND c1.city = c2.city
WHERE c1.city = 'Albany'
ORDER BY
	c1.city,
    customer_1,
    customer_2;

SELECT
    order_id,
    SUM (
        quantity * list_price * (1 - discount)
    ) net_value
FROM
    sales.order_items
GROUP BY
    order_id;

SELECT
    category_id,
    AVG (list_price) avg_list_price
FROM
    production.products
GROUP BY
    category_id
HAVING
    AVG (list_price) BETWEEN 500 AND 1000;

SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price > (
        SELECT
            AVG (list_price)
        FROM
            production.products
        WHERE
            brand_id IN (
                SELECT
                    brand_id
                FROM
                    production.brands
                WHERE
                    brand_name = 'Strider'
                OR brand_name = 'Trek'
            )
    )
ORDER BY
    list_price;

SELECT
    product_name,
    list_price,
    category_id
FROM
    production.products p1
WHERE
    list_price IN (
        SELECT
            MAX (p2.list_price)
        FROM
            production.products p2
        WHERE
            p2.category_id = p1.category_id
        GROUP BY
            p2.category_id
    )
ORDER BY
    category_id,
    product_name;*/


