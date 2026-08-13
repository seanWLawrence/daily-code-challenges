# Monthly running revenue

Write a query that returns monthly revenue and a running total across months. Return columns named `month`, `monthly_revenue`, and `running_revenue`, sorted chronologically. Months with no orders should not appear.

Your solution must create a temporary view named `answer`:

```sql
CREATE TEMP VIEW answer AS
SELECT ...;
```

```sh
npm test
```

For the fixture data, January has revenue 130 and February has revenue 75, so February’s running revenue is 205.
