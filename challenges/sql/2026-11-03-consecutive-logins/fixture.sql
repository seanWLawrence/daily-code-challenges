CREATE TABLE logins (user_id INTEGER, logged_at TEXT, PRIMARY KEY (user_id, logged_at));
INSERT INTO logins VALUES
  (1, '2026-10-01'), (1, '2026-10-02'), (1, '2026-10-04'),
  (2, '2026-10-03'), (2, '2026-10-04'), (2, '2026-10-05'),
  (3, '2026-10-10'),
  (4, '2026-10-30'), (4, '2026-10-31');

.read challenges/sql/2026-11-03-consecutive-logins/solution.sql

CREATE TEMP TABLE expected (user_id INTEGER, first_login TEXT, second_login TEXT);
INSERT INTO expected VALUES
  (1, '2026-10-01', '2026-10-02'),
  (2, '2026-10-03', '2026-10-04'),
  (2, '2026-10-04', '2026-10-05'),
  (4, '2026-10-30', '2026-10-31');

SELECT 'missing: ' || user_id || '/' || first_login || '/' || second_login
FROM (
  SELECT user_id, first_login, second_login FROM expected
  EXCEPT
  SELECT user_id, first_login, second_login FROM answer
)
UNION ALL
SELECT 'unexpected: ' || user_id || '/' || first_login || '/' || second_login
FROM (
  SELECT user_id, first_login, second_login FROM answer
  EXCEPT
  SELECT user_id, first_login, second_login FROM expected
);
