import { describe, expect, it } from "vitest";
import { smallestCoveringWindow } from "./solution.js";

describe("smallestCoveringWindow", () => {
  it("finds and trims a shortest covering window", () => {
    expect(smallestCoveringWindow([4, 1, 3, 2, 1, 2, 3], [1, 2, 3])).toEqual({
      start: 1,
      end: 3,
      values: [1, 3, 2]
    });
    expect(smallestCoveringWindow([7, 2, 7, 4, 2], [2, 4])).toEqual({
      start: 3,
      end: 4,
      values: [4, 2]
    });
  });

  it("uses the earliest start for equal-sized windows", () => {
    expect(smallestCoveringWindow([1, 2, 9, 1, 2], [1, 2])).toEqual({
      start: 0,
      end: 1,
      values: [1, 2]
    });
  });

  it("treats duplicate required values as one requirement and handles no match", () => {
    expect(smallestCoveringWindow([5, 2, 8], [2, 2])).toEqual({
      start: 1,
      end: 1,
      values: [2]
    });
    expect(smallestCoveringWindow([1, 2], [3])).toBeNull();
    expect(smallestCoveringWindow([1, 2], [])).toBeNull();
  });

  it("does not mutate its inputs", () => {
    const values = [4, 1, 3, 2];
    const required = [1, 2, 3];
    smallestCoveringWindow(values, required);
    expect(values).toEqual([4, 1, 3, 2]);
    expect(required).toEqual([1, 2, 3]);
  });
});
