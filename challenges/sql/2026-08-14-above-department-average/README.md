# Employees above their department average

Write a query returning each employee whose salary is strictly greater than the average salary in their own department. Return columns named `employee`, `department`, and `salary`, sorted by department and employee.

Your solution must create a temporary view named `answer`:

```sql
CREATE TEMP VIEW answer AS
SELECT ...;
```

```sh
npm test
```

For the fixture data, the qualifying employees are Ava, Cam, and Fay.
