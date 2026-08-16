# Longest daily activity streak

Write a query that returns each user’s longest streak of consecutive active calendar days. Return columns named `user`, `streak_days`, `streak_start`, and `streak_end`, sorted by user. If a user has multiple longest streaks, return the earliest one.

Your solution must create a temporary view named `answer`.

```sh
npm test
```

For the fixture data, Ava’s longest streak is three days and Ben’s is two days.
