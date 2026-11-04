# Inventory reorder alerts

Write a query that identifies products that need to be reordered. For each product, add up all quantities in the `inventory` table. Return `product_id`, `product_name`, `total_on_hand`, and `reorder_level` for products whose total on-hand quantity is **strictly less** than their reorder level.

Include products that have no inventory rows, treating their total as zero. Sort by `total_on_hand` ascending and then by `product_id` ascending.

Create a temporary view named `answer`.

```sh
npm test
```

## Example

Given products:

| product_id | product_name | reorder_level |
| --- | --- | --- |
| 1 | Clamps | 10 |
| 2 | Plane iron | 4 |

and inventory totals of 7 for Clamps and 4 for Plane iron, return:

| product_id | product_name | total_on_hand | reorder_level |
| --- | --- | --- | --- |
| 1 | Clamps | 7 | 10 |

Plane iron is not included because its stock equals, rather than falls below, its reorder level.
