import { describe, expect, it } from "vitest";

import { rotateRight } from "./solution.js";

describe("rotateRight", () => {
  it("rotates items to the right", () => {
    expect(rotateRight([1, 2, 3, 4], 1)).toEqual([4, 1, 2, 3]);
  });

  it("normalizes negative and oversized step counts", () => {
    expect(rotateRight(["a", "b", "c"], -1)).toEqual(["b", "c", "a"]);
    expect(rotateRight(["a", "b", "c"], 7)).toEqual(["c", "a", "b"]);
  });

  it("does not mutate the input", () => {
    const items = [1, 2, 3];
    rotateRight(items, 2);
    expect(items).toEqual([1, 2, 3]);
  });

  it("handles an empty input", () => {
    expect(rotateRight([], 4)).toEqual([]);
  });
});
