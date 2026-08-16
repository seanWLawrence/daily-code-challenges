import { describe, expect, it } from "vitest";

import { firstUniqueWindow } from "./solution.js";

describe("firstUniqueWindow", () => {
  it("returns the earliest window whose characters are all unique", () => {
    expect(firstUniqueWindow("aabcbcde", 4)).toBe("bcde");
  });

  it("prefers an earlier qualifying window", () => {
    expect(firstUniqueWindow("abcded", 4)).toBe("abcd");
  });

  it("returns null when no qualifying window exists", () => {
    expect(firstUniqueWindow("aabbcc", 3)).toBeNull();
  });

  it("returns null for invalid window sizes", () => {
    expect(firstUniqueWindow("abc", 0)).toBeNull();
    expect(firstUniqueWindow("abc", 4)).toBeNull();
  });
});
