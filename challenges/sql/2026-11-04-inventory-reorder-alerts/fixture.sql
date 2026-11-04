CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  reorder_level INTEGER NOT NULL
);
CREATE TABLE inventory (
  warehouse_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO products VALUES
  (1, 'Clamps', 10),
  (2, 'Plane iron', 4),
  (3, 'Chisel set', 6),
  (4, 'Marking knife', 3),
  (5, 'Mallet', 2);
INSERT INTO inventory VALUES
  (1, 1, 3), (2, 1, 4),
  (1, 2, 4),
  (1, 3, 2), (2, 3, 1),
  (1, 5, 5), (2, 5, 1);

.read challenges/sql/2026-11-04-inventory-reorder-alerts/solution.sql

CREATE TEMP TABLE expected (
  product_id INTEGER,
  product_name TEXT,
  total_on_hand INTEGER,
  reorder_level INTEGER
);
INSERT INTO expected VALUES
  (4, 'Marking knife', 0, 3),
  (3, 'Chisel set', 3, 6),
  (1, 'Clamps', 7, 10);

SELECT 'missing: ' || product_id || '/' || product_name || '/' || total_on_hand || '/' || reorder_level
FROM (
  SELECT product_id, product_name, total_on_hand, reorder_level FROM expected
  EXCEPT
  SELECT product_id, product_name, total_on_hand, reorder_level FROM answer
)
UNION ALL
SELECT 'unexpected: ' || product_id || '/' || product_name || '/' || total_on_hand || '/' || reorder_level
FROM (
  SELECT product_id, product_name, total_on_hand, reorder_level FROM answer
  EXCEPT
  SELECT product_id, product_name, total_on_hand, reorder_level FROM expected
);
