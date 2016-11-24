USE northwind;

SHOW TABLES;

SELECT count(*) FROM customers;

-- extra 15 count(*) queries
SELECT count(*) FROM employees;
SELECT count(*) FROM invoices;
SELECT count(*) FROM order_details;
SELECT count(*) FROM orders;
SELECT count(*) FROM products;
SELECT count(*) FROM employee_privileges;
SELECT count(*) FROM inventory_transaction_types;
SELECT count(*) FROM inventory_transactions;
SELECT count(*) FROM order_details_status;
SELECT count(*) FROM orders_status;
SELECT count(*) FROM purchase_orders;
SELECT count(*) FROM sales_reports;
SELECT count(*) FROM shippers;
SELECT count(*) FROM strings;
SELECT count(*) FROM suppliers;

-- 5 additional join tests
SELECT *
FROM orders o
INNER JOIN employees e
ON o.employee_id = e.id
INNER JOIN customers c
ON o.customer_id = c.id;

SELECT *
FROM products p
INNER JOIN suppliers s
ON p.supplier_ids = s.id;

SELECT *
FROM purchase_orders po
INNER JOIN suppliers s
ON po.supplier_id = s.id;

SELECT *
FROM employee_privileges ep
INNER JOIN employees e
ON ep.employee_id = e.id
INNER JOIN privileges p
ON ep.privilege_id = p.id;

SELECT *
FROM inventory_transactions it
INNER JOIN inventory_transaction_types itt
ON it.transaction_type = itt.id;
