import { describe, expect, it } from "vitest";
import { uniqueInOrder } from "./solution.js";

describe("uniqueInOrder", () => {
  it("retains the first occurrence of each value", () => {
    expect(uniqueInOrder([3, 1, 3, 2, 1])).toEqual([3, 1, 2]);
  });
  it("handles strings and empty input", () => {
    expect(uniqueInOrder(["a", "a", "b"])).toEqual(["a", "b"]);
    expect(uniqueInOrder([])).toEqual([]);
  });
  it("does not mutate the input", () => {
    const items = [1, 1, 2]; uniqueInOrder(items); expect(items).toEqual([1, 1, 2]);
  });
});
