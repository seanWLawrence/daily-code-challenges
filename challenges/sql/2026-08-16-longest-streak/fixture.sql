CREATE TABLE activity (user TEXT NOT NULL, active_on TEXT NOT NULL);

INSERT INTO activity (user, active_on) VALUES
  ('Ava', '2026-01-01'), ('Ava', '2026-01-02'), ('Ava', '2026-01-03'),
  ('Ava', '2026-01-06'), ('Ava', '2026-01-07'),
  ('Ben', '2026-01-02'), ('Ben', '2026-01-04'), ('Ben', '2026-01-05'),
  ('Ben', '2026-01-08'), ('Ben', '2026-01-09');

.read challenges/sql/2026-08-16-longest-streak/solution.sql

CREATE TEMP TABLE expected (user TEXT, streak_days INTEGER, streak_start TEXT, streak_end TEXT);
INSERT INTO expected VALUES
  ('Ava', 3, '2026-01-01', '2026-01-03'),
  ('Ben', 2, '2026-01-04', '2026-01-05');

SELECT 'missing: ' || user || '/' || streak_days || '/' || streak_start || '/' || streak_end FROM (
  SELECT user, streak_days, streak_start, streak_end FROM expected
  EXCEPT
  SELECT user, streak_days, streak_start, streak_end FROM answer
)
UNION ALL
SELECT 'unexpected: ' || user || '/' || streak_days || '/' || streak_start || '/' || streak_end FROM (
  SELECT user, streak_days, streak_start, streak_end FROM answer
  EXCEPT
  SELECT user, streak_days, streak_start, streak_end FROM expected
);
