CREATE TABLE employees (employee TEXT, department TEXT, salary INTEGER);
INSERT INTO employees VALUES
  ('Ava', 'design', 110), ('Ben', 'design', 95), ('Cam', 'design', 95),
  ('Dee', 'engineering', 150), ('Eli', 'engineering', 130), ('Fay', 'engineering', 120),
  ('Gus', 'sales', 80), ('Hal', 'sales', 80);
.read challenges/sql/2026-08-18-second-highest-salary/solution.sql
CREATE TEMP TABLE expected (department TEXT, second_highest_salary INTEGER);
INSERT INTO expected VALUES ('design', 95), ('engineering', 130);
SELECT 'missing: ' || department || '/' || second_highest_salary FROM (SELECT department, second_highest_salary FROM expected EXCEPT SELECT department, second_highest_salary FROM answer)
UNION ALL
SELECT 'unexpected: ' || department || '/' || second_highest_salary FROM (SELECT department, second_highest_salary FROM answer EXCEPT SELECT department, second_highest_salary FROM expected);
