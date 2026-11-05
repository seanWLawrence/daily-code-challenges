# Customer order gaps

Write a query that finds the number of days between each customer's consecutive orders. For every order except that customer's first order, return:

- `customer_id`
- `order_id`
- `order_date`
- `days_since_previous_order`

Orders on the same date have a gap of `0`. When a customer has multiple orders on the same date, use `order_id` to break the tie: the lower ID comes first. Sort the final rows by `customer_id`, `order_date`, and `order_id`.

Create a temporary view named `answer`.

```sh
npm test
```

## Example

Given these orders for customer `7`:

| order_id | customer_id | order_date |
| --- | --- | --- |
| 10 | 7 | 2026-01-03 |
| 11 | 7 | 2026-01-03 |
| 12 | 7 | 2026-01-08 |

return:

| customer_id | order_id | order_date | days_since_previous_order |
| --- | --- | --- | --- |
| 7 | 11 | 2026-01-03 | 0 |
| 7 | 12 | 2026-01-08 | 5 |
