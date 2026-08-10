import { execFileSync } from "node:child_process";
import { readdirSync } from "node:fs";
import { join } from "node:path";

const findFixtures = (directory) =>
  readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const path = join(directory, entry.name);
    if (entry.isDirectory()) return findFixtures(path);
    return entry.name === "fixture.sql" ? [path] : [];
  });

const fixtures = findFixtures("challenges/sql");

for (const fixture of fixtures) {
  const output = execFileSync("sqlite3", [":memory:"], {
    cwd: process.cwd(),
    input: `.read ${fixture}\n`,
    encoding: "utf8"
  }).trim();

  if (output) {
    throw new Error(`SQL fixture failed: ${fixture}\n${output}`);
  }
}

console.log(`Passed ${fixtures.length} SQL fixture${fixtures.length === 1 ? "" : "s"}.`);
