# Qualifying order streaks

Write a query that reports each customer's longest streak of consecutive calendar days on which they placed at least one order of `$100` or more. Return:

- `customer_id`
- `streak_start`
- `streak_end`
- `streak_days`

Rules:

- Count a day once per customer, even if the customer has multiple qualifying orders that day.
- Ignore orders below `$100`.
- Consecutive means adjacent calendar dates, not adjacent rows.
- If a customer has multiple equally long streaks, return their earliest one.
- Include only customers whose longest streak is at least two days.
- Sort by `customer_id`.

Create a temporary view named `answer`.

```sh
npm test
```

## Example

For qualifying order days `2026-04-10`, `2026-04-11`, and `2026-04-13`, the first two dates form a two-day streak; the 13th starts a separate one-day streak. The result should report:

| customer_id | streak_start | streak_end | streak_days |
| --- | --- | --- | --- |
| 7 | 2026-04-10 | 2026-04-11 | 2 |
