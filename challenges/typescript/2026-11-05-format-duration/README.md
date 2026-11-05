# Format duration

Implement `formatDuration`. Given a non-negative whole number of seconds, return a compact, human-readable duration using days (`d`), hours (`h`), minutes (`m`), and seconds (`s`).

- Use only non-zero units, except that zero seconds must return `"0s"`.
- Order units from largest to smallest: days, hours, minutes, seconds.
- Do not mutate any input.

```sh
npm test
```

## Examples

```ts
formatDuration(0);       // "0s"
formatDuration(65);      // "1m 5s"
formatDuration(90061);   // "1d 1h 1m 1s"
```

For example, `3660` returns `"1h 1m"`: there are no remaining seconds, so the seconds unit is omitted.
