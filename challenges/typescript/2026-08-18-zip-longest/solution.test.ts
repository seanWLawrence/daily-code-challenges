import { describe, expect, it } from "vitest";
import { zipLongest } from "./solution.js";

describe("zipLongest", () => {
  it("uses null for a missing item", () => {
    expect(zipLongest(["a", "b"], [1])).toEqual([["a", 1], ["b", null]]);
    expect(zipLongest(["a"], [1, 2])).toEqual([["a", 1], [null, 2]]);
  });
  it("preserves aligned items and handles empty inputs", () => {
    expect(zipLongest(["a", "b"], [1, 2])).toEqual([["a", 1], ["b", 2]]);
    expect(zipLongest([], [])).toEqual([]);
  });
  it("does not mutate inputs", () => {
    const left = ["a"]; const right = [1, 2]; zipLongest(left, right);
    expect(left).toEqual(["a"]); expect(right).toEqual([1, 2]);
  });
});
