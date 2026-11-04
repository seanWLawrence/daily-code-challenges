# Sliding-window maximum

Implement `slidingWindowMaximum`. Given an array of numbers and a window size `k`, return an array containing the largest value in every contiguous window of `k` items.

Return an empty array if `k` is less than 1 or larger than the input length. Do not mutate the input.

```sh
npm test
```

## Example

```ts
slidingWindowMaximum([1, 3, -1, -3, 5, 3, 6, 7], 3);
```

Returns:

```ts
[3, 3, 5, 5, 6, 7]
```

The windows are `[1, 3, -1]`, `[3, -1, -3]`, and so on. A one-item window returns a copy of the input values.
