# Customers with complete category coverage

Write a query that returns every customer who has bought at least one product in **every category represented in the products table**. Return one column named `customer`, sorted alphabetically.

Your query must create a temporary view named `answer`:

```sql
CREATE TEMP VIEW answer AS
SELECT ...;
```

Run all fixtures with:

```sh
npm test
```

For the supplied data, the result is `Ava` and `Cam`.
