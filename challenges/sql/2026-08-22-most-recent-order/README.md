# Most recent order by customer

Write a query returning each customer’s most recent order. Return `customer`, `ordered_at`, and `amount`, sorted by customer. Break same-date ties using the larger `order_id`. Create a temporary view named `answer`.

```sh
npm test
```
