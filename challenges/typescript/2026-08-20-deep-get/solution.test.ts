import { describe, expect, it } from "vitest";
import { deepGet } from "./solution.js";

describe("deepGet", () => {
  const data = { user: { name: "Ava", settings: { dark: false } } };
  it("returns nested values", () => {
    expect(deepGet(data, "user.name")).toBe("Ava");
    expect(deepGet(data, "user.settings.dark")).toBe(false);
  });
  it("returns undefined for missing paths", () => {
    expect(deepGet(data, "user.email")).toBeUndefined();
    expect(deepGet(null, "user.name")).toBeUndefined();
  });
  it("returns the original value for an empty path", () => {
    expect(deepGet(data, "")).toBe(data);
  });
});
