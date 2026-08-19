import { describe, expect, it } from "vitest";
import { groupBy } from "./solution.js";

describe("groupBy", () => {
  it("groups in source order", () => {
    expect(groupBy(["ant", "ape", "bat"], (word) => word[0])).toEqual({ a: ["ant", "ape"], b: ["bat"] });
  });
  it("handles objects and an empty list", () => {
    expect(groupBy([{ name: "Ava", team: "red" }, { name: "Ben", team: "blue" }], ({ team }) => team)).toEqual({ red: [{ name: "Ava", team: "red" }], blue: [{ name: "Ben", team: "blue" }] });
    expect(groupBy([], () => "unused")).toEqual({});
  });
  it("does not mutate the input", () => {
    const items = ["ant", "bat"]; groupBy(items, (word) => word[0]); expect(items).toEqual(["ant", "bat"]);
  });
});
