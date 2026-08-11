CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  category TEXT NOT NULL,
  product TEXT NOT NULL
);

CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(product_id),
  units INTEGER NOT NULL
);

INSERT INTO products (product_id, category, product) VALUES
  (1, 'books', 'Novel'), (2, 'books', 'Reference'),
  (3, 'kitchen', 'Mug'), (4, 'kitchen', 'Pan'),
  (5, 'tools', 'Chisel'), (6, 'tools', 'Plane');

INSERT INTO sales (sale_id, product_id, units) VALUES
  (1, 1, 8), (2, 2, 6),
  (3, 3, 10), (4, 4, 9),
  (5, 5, 4), (6, 5, 3), (7, 6, 7);

.read challenges/sql/2026-08-11-top-products-per-category/solution.sql

CREATE TEMP TABLE expected (category TEXT, product TEXT, total_units INTEGER);
INSERT INTO expected VALUES
  ('books', 'Novel', 8),
  ('kitchen', 'Mug', 10),
  ('tools', 'Chisel', 7),
  ('tools', 'Plane', 7);

SELECT 'missing: ' || category || '/' || product || '/' || total_units FROM (
  SELECT category, product, total_units FROM expected
  EXCEPT
  SELECT category, product, total_units FROM answer
)
UNION ALL
SELECT 'unexpected: ' || category || '/' || product || '/' || total_units FROM (
  SELECT category, product, total_units FROM answer
  EXCEPT
  SELECT category, product, total_units FROM expected
);
