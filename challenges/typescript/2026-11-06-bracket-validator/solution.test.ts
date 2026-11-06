import { describe, expect, it } from "vitest";
import { isBalanced } from "./solution.js";

describe("isBalanced", () => {
  it("accepts correctly nested brackets", () => {
    expect(isBalanced("")).toBe(true);
    expect(isBalanced("function f() { return [1, 2]; }")).toBe(true);
    expect(isBalanced("{[()]}" )).toBe(true);
    expect(isBalanced("no brackets here")).toBe(true);
  });

  it("rejects mismatched, premature, and unclosed brackets", () => {
    expect(isBalanced("([)]")).toBe(false);
    expect(isBalanced(")start(" )).toBe(false);
    expect(isBalanced("(()")).toBe(false);
    expect(isBalanced("{[(])}" )).toBe(false);
  });
});
