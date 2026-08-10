CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  category TEXT NOT NULL
);

CREATE TABLE purchases (
  purchase_id INTEGER PRIMARY KEY,
  customer TEXT NOT NULL,
  product_id INTEGER NOT NULL REFERENCES products(product_id)
);

INSERT INTO products (product_id, category) VALUES
  (1, 'books'), (2, 'books'), (3, 'tools'), (4, 'tools'), (5, 'music');

INSERT INTO purchases (purchase_id, customer, product_id) VALUES
  (1, 'Ava', 1), (2, 'Ava', 3), (3, 'Ava', 5),
  (4, 'Ben', 1), (5, 'Ben', 3),
  (6, 'Cam', 2), (7, 'Cam', 4), (8, 'Cam', 5),
  (9, 'Dee', 1), (10, 'Dee', 5);

.read challenges/sql/2026-08-10-complete-category-customers/solution.sql

CREATE TEMP TABLE expected (customer TEXT PRIMARY KEY);
INSERT INTO expected (customer) VALUES ('Ava'), ('Cam');

SELECT 'missing: ' || customer FROM (
  SELECT customer FROM expected
  EXCEPT
  SELECT customer FROM answer
)
UNION ALL
SELECT 'unexpected: ' || customer FROM (
  SELECT customer FROM answer
  EXCEPT
  SELECT customer FROM expected
);
