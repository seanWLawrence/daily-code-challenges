CREATE TABLE employees (
  employee TEXT PRIMARY KEY,
  department TEXT NOT NULL,
  salary INTEGER NOT NULL
);

INSERT INTO employees (employee, department, salary) VALUES
  ('Ava', 'design', 110), ('Ben', 'design', 90),
  ('Cam', 'engineering', 150), ('Dee', 'engineering', 130), ('Eli', 'engineering', 120),
  ('Fay', 'sales', 95), ('Gus', 'sales', 75);

.read challenges/sql/2026-08-14-above-department-average/solution.sql

CREATE TEMP TABLE expected (employee TEXT, department TEXT, salary INTEGER);
INSERT INTO expected VALUES
  ('Ava', 'design', 110), ('Cam', 'engineering', 150), ('Fay', 'sales', 95);

SELECT 'missing: ' || employee || '/' || department || '/' || salary FROM (
  SELECT employee, department, salary FROM expected
  EXCEPT
  SELECT employee, department, salary FROM answer
)
UNION ALL
SELECT 'unexpected: ' || employee || '/' || department || '/' || salary FROM (
  SELECT employee, department, salary FROM answer
  EXCEPT
  SELECT employee, department, salary FROM expected
);
