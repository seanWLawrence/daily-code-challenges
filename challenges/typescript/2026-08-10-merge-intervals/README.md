# Merge intervals

Implement `mergeIntervals`. Given time intervals with inclusive `start` and `end` values, return a new list in ascending order with every overlapping **or touching** interval merged.

Do not mutate the input. An empty input returns an empty list.

```sh
npm test
```

Example: `[{ start: 1, end: 3 }, { start: 3, end: 5 }, { start: 8, end: 9 }]` becomes `[{ start: 1, end: 5 }, { start: 8, end: 9 }]`.
