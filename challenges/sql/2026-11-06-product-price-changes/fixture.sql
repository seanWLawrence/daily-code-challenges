CREATE TABLE price_events (
  price_event_id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL,
  changed_at TEXT NOT NULL,
  price INTEGER NOT NULL
);

INSERT INTO price_events VALUES
  (1, 1, '2026-01-01 09:00', 100),
  (2, 1, '2026-01-02 09:00', 100),
  (3, 1, '2026-01-03 09:00', 120),
  (4, 1, '2026-01-03 09:00', 115),
  (5, 2, '2026-02-01 09:00', 50),
  (6, 2, '2026-02-04 09:00', 55),
  (7, 3, '2026-03-01 09:00', 80);

.read challenges/sql/2026-11-06-product-price-changes/solution.sql

CREATE TEMP TABLE expected (
  product_id INTEGER,
  changed_at TEXT,
  old_price INTEGER,
  new_price INTEGER
);
INSERT INTO expected VALUES
  (1, '2026-01-03 09:00', 100, 120),
  (1, '2026-01-03 09:00', 120, 115),
  (2, '2026-02-04 09:00', 50, 55);

SELECT 'missing: ' || product_id || '/' || changed_at || '/' || old_price || '/' || new_price
FROM (
  SELECT product_id, changed_at, old_price, new_price FROM expected
  EXCEPT
  SELECT product_id, changed_at, old_price, new_price FROM answer
)
UNION ALL
SELECT 'unexpected: ' || product_id || '/' || changed_at || '/' || old_price || '/' || new_price
FROM (
  SELECT product_id, changed_at, old_price, new_price FROM answer
  EXCEPT
  SELECT product_id, changed_at, old_price, new_price FROM expected
);
