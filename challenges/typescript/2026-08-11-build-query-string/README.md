# Build a query string

Implement `buildQueryString` to turn parameters into a URL query string.

- Omit keys whose value is `undefined`.
- Expand array values into repeated key/value pairs.
- Encode both keys and values with `encodeURIComponent`.
- Sort entries by key, preserving the given order within an array value.
- Return an empty string when no parameters remain.

```sh
npm test
```

Example:

```ts
buildQueryString({ tag: ["hand tools", "planes"], page: "2", draft: undefined });
// "page=2&tag=hand%20tools&tag=planes"
```
