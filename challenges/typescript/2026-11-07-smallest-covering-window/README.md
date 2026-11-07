# Smallest covering window

Implement `smallestCoveringWindow`. Given an array of numbers and a list of required values, return the shortest contiguous portion of the array that contains every required value at least once.

- Return an object with inclusive `start` and `end` indices, plus the matching `values`.
- If more than one shortest window exists, return the one with the earliest `start` index.
- Duplicate values in `required` do not add another requirement: `[2, 2]` means the window needs a `2` once.
- Return `null` when `required` is empty or when no window can cover it.
- Do not mutate either input array.

```sh
npm test
```

## Examples

```ts
smallestCoveringWindow([4, 1, 3, 2, 1, 2, 3], [1, 2, 3]);
// { start: 1, end: 3, values: [1, 3, 2] }

smallestCoveringWindow([7, 2, 7, 4, 2], [2, 4]);
// { start: 3, end: 4, values: [4, 2] }

smallestCoveringWindow([1, 2], [3]);
// null
```

The window must be contiguous: selecting `[1, 2, 3]` from scattered positions is not enough.
