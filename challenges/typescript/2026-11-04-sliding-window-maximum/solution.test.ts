import { describe, expect, it } from "vitest";
import { slidingWindowMaximum } from "./solution.js";

describe("slidingWindowMaximum", () => {
  it("finds the maximum in every overlapping window", () => {
    expect(slidingWindowMaximum([1, 3, -1, -3, 5, 3, 6, 7], 3)).toEqual([
      3, 3, 5, 5, 6, 7
    ]);
  });

  it("handles repeated values, single-item windows, and invalid window sizes", () => {
    const values = [4, 4, 2, 4];

    expect(slidingWindowMaximum(values, 2)).toEqual([4, 4, 4]);
    expect(slidingWindowMaximum(values, 1)).toEqual([4, 4, 2, 4]);
    expect(slidingWindowMaximum(values, 0)).toEqual([]);
    expect(slidingWindowMaximum(values, 5)).toEqual([]);
    expect(values).toEqual([4, 4, 2, 4]);
  });
});
