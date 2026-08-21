CREATE TABLE products (product_id INTEGER PRIMARY KEY, product TEXT, category TEXT);
CREATE TABLE sales (sale_id INTEGER PRIMARY KEY, product_id INTEGER);
INSERT INTO products VALUES (1, 'Chisel', 'tools'), (2, 'Plane', 'tools'), (3, 'Mug', 'kitchen'), (4, 'Saw', 'tools');
INSERT INTO sales VALUES (1, 1), (2, 3), (3, 1);
.read challenges/sql/2026-08-21-products-never-sold/solution.sql
CREATE TEMP TABLE expected (product TEXT, category TEXT);
INSERT INTO expected VALUES ('Plane', 'tools'), ('Saw', 'tools');
SELECT 'missing: ' || product || '/' || category FROM (SELECT product, category FROM expected EXCEPT SELECT product, category FROM answer)
UNION ALL SELECT 'unexpected: ' || product || '/' || category FROM (SELECT product, category FROM answer EXCEPT SELECT product, category FROM expected);
