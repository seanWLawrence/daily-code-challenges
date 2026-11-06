# Bracket validator

Implement `isBalanced`. Given a string, return whether its round (`()`), square (`[]`), and curly (`{}`) brackets are correctly balanced and nested.

- Ignore every non-bracket character.
- Every closing bracket must match the most recent unmatched opening bracket.
- An empty string is balanced.
- Do not mutate the input.

```sh
npm test
```

## Examples

```ts
isBalanced("function f() { return [1, 2]; }"); // true
isBalanced("([)]");                            // false
isBalanced("(()");                             // false
isBalanced("no brackets here");                // true
```

For example, `"{[()]}"` is balanced because each closer matches the latest opener. `"{[(])}"` is not: `]` appears while `(` is the latest unmatched opener.
