import { describe, expect, it } from "vitest";

import { topScorers } from "./solution.js";

describe("topScorers", () => {
  it("adds repeated player scores and returns ties alphabetically", () => {
    expect(topScorers("Ana: 4\nBen: 5\nAna: 1\nCam: 2")).toEqual(["Ana", "Ben"]);
  });

  it("ignores blank lines and trims fields", () => {
    expect(topScorers("\n  Dee : -2  \n\n Eli: -1 \n")).toEqual(["Eli"]);
  });

  it("returns an empty list for blank input", () => {
    expect(topScorers(" \n\t ")).toEqual([]);
  });

  it("rejects malformed nonblank lines", () => {
    expect(() => topScorers("Ana - 3")).toThrow();
  });
});
