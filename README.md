# Daily code challenges

Each challenge lives in its own folder with a short brief, a `solution.ts` file for your implementation, and a test fixture.

## Start

```sh
npm install
npm test
```

`npm test` runs every TypeScript and SQL fixture. While working on a TypeScript exercise, use `npm run test:watch` for quick feedback.

## Layout

```text
challenges/
  typescript/
    YYYY-MM-DD-challenge-name/
      README.md
      solution.ts
      solution.test.ts
  sql/
    YYYY-MM-DD-challenge-name/
      README.md
      solution.sql
      fixture.sql
```

TypeScript challenges use Vitest. SQL challenges include a self-contained fixture and precise expected results; their README documents the database command to run.

SQL fixtures should end with queries that return no rows when the solution is correct and at least one row when it is not. `npm run test:sql` executes each fixture with SQLite and fails on incorrect results.
