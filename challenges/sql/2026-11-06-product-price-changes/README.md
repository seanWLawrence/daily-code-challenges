# Product price changes

Write a query that reports each time a product's price changes from its immediately previous recorded price. Return:

- `product_id`
- `changed_at`
- `old_price`
- `new_price`

Ignore a product's first recorded price and rows where the price is unchanged. For events with the same timestamp, use `price_event_id` to determine their order. Sort the final rows by `product_id`, `changed_at`, and `price_event_id`.

Create a temporary view named `answer`.

```sh
npm test
```

## Example

Given the following events:

| price_event_id | product_id | changed_at | price |
| --- | --- | --- | --- |
| 1 | 7 | 2026-01-01 09:00 | 20 |
| 2 | 7 | 2026-01-03 09:00 | 20 |
| 3 | 7 | 2026-01-05 09:00 | 24 |

return:

| product_id | changed_at | old_price | new_price |
| --- | --- | --- | --- |
| 7 | 2026-01-05 09:00 | 20 | 24 |
