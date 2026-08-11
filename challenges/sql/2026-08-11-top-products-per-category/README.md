# Top-selling products per category

Write a query returning every product tied for the highest total units sold in its category. Return columns named `category`, `product`, and `total_units`, sorted by category and then product.

Your solution must create a temporary view named `answer`:

```sql
CREATE TEMP VIEW answer AS
SELECT ...;
```

```sh
npm test
```

For the supplied data, `books` has one winner, `kitchen` has one winner, and `tools` has a two-product tie.
