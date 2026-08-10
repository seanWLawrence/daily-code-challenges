# Daily code challenges

Each challenge lives in its own folder with a short brief, a `solution.ts` file for your implementation, and a test fixture.

## Start

```sh
npm install
npm test
```

`npm test` runs every challenge fixture. While working on one exercise, use `npm run test:watch` for quick feedback.

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
