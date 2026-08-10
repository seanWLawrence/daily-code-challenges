import { describe, expect, it } from "vitest";

import { mergeIntervals } from "./solution.js";

describe("mergeIntervals", () => {
  it("sorts and merges overlapping intervals", () => {
    expect(
      mergeIntervals([
        { start: 8, end: 10 },
        { start: 1, end: 4 },
        { start: 3, end: 6 }
      ])
    ).toEqual([
      { start: 1, end: 6 },
      { start: 8, end: 10 }
    ]);
  });

  it("merges intervals that touch at an endpoint", () => {
    expect(
      mergeIntervals([
        { start: 1, end: 3 },
        { start: 3, end: 5 },
        { start: 5, end: 5 }
      ])
    ).toEqual([{ start: 1, end: 5 }]);
  });

  it("does not mutate the input", () => {
    const intervals = [
      { start: 4, end: 6 },
      { start: 1, end: 2 }
    ];

    mergeIntervals(intervals);

    expect(intervals).toEqual([
      { start: 4, end: 6 },
      { start: 1, end: 2 }
    ]);
  });
});
