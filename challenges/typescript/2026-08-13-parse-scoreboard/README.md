# Parse a scoreboard

Implement `topScorers`. Each line has the form `name: points`; blank lines should be ignored. Return the name or names tied for the highest total score, alphabetically sorted. A player may appear on multiple lines.

- Trim whitespace around names and scores.
- Points are signed integers.
- Return an empty array for blank input.
- Throw an error for a nonblank line that is not valid `name: integer` data.

```sh
npm test
```

Example: `"Ana: 4\nBen: 5\nAna: 1"` produces `["Ana", "Ben"]`.
