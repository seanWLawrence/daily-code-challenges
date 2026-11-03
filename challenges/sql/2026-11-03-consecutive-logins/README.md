# Consecutive logins

Write a query that returns every pair of consecutive calendar-day logins for the same user. Return `user_id`, `first_login`, and `second_login`, sorted by `user_id` and then `first_login`. There is at most one login per user per day.

Create a temporary view named `answer`.

```sh
npm test
```

## Example

For these logins:

| user_id | logged_at |
| --- | --- |
| 1 | 2026-10-01 |
| 1 | 2026-10-02 |
| 1 | 2026-10-04 |
| 2 | 2026-10-03 |
| 2 | 2026-10-04 |

the result is:

| user_id | first_login | second_login |
| --- | --- | --- |
| 1 | 2026-10-01 | 2026-10-02 |
| 2 | 2026-10-03 | 2026-10-04 |

If a user logs in three days in a row, return two pairs: day 1/day 2 and day 2/day 3.
