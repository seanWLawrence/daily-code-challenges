import { describe, expect, it } from "vitest";
import { countWords } from "./solution.js";

describe("countWords", () => {
  it("counts case-insensitively", () => {
    expect(countWords("Hello, hello! 42")).toEqual({ hello: 2, "42": 1 });
  });
  it("ignores punctuation and whitespace", () => {
    expect(countWords("  one--two...one\n")).toEqual({ one: 2, two: 1 });
    expect(countWords("  ")).toEqual({});
  });
});
