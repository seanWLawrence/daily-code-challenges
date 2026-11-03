# Competition ranking

Implement `rankPlayers`. Given players with a name and score, return a new list sorted by descending score and then alphabetically by name. Add a one-based **competition rank** to every player: equal scores share a rank, and the following rank skips by the size of the tie.

Do not mutate the input array or its player objects.

```sh
npm test
```

## Example

```ts
rankPlayers([
  { name: "Mina", score: 91 },
  { name: "Omar", score: 88 },
  { name: "Rae", score: 91 },
  { name: "Sol", score: 72 }
]);
```

Returns:

```ts
[
  { name: "Mina", score: 91, rank: 1 },
  { name: "Rae", score: 91, rank: 1 },
  { name: "Omar", score: 88, rank: 3 },
  { name: "Sol", score: 72, rank: 4 }
]
```

An empty input returns an empty array.
