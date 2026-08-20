# First order per customer

Write a query returning each customer’s first order, including the order date and amount. Return `customer`, `ordered_at`, and `amount`, sorted by customer. When multiple orders share the first date, return the smaller `order_id`.

Create a temporary view named `answer`, then run:

```sh
npm test
```
