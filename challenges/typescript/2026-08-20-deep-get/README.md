# Deep object lookup

Implement `deepGet`. Return the value at a dot-separated path through plain objects. Return `undefined` if any path segment is absent. An empty path returns the input object itself.

```sh
npm test
```

Example: `deepGet({ user: { name: 'Ava' } }, 'user.name')` returns `'Ava'`.
