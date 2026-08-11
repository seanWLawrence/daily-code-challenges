import { describe, expect, it } from "vitest";

import { buildQueryString } from "./solution.js";

describe("buildQueryString", () => {
  it("sorts keys and encodes values", () => {
    expect(
      buildQueryString({ query: "a & b", page: "2", "sort by": "name" })
    ).toBe("page=2&query=a%20%26%20b&sort%20by=name");
  });

  it("expands arrays and omits undefined values", () => {
    expect(
      buildQueryString({ tag: ["hand tools", "planes"], draft: undefined, view: "grid" })
    ).toBe("tag=hand%20tools&tag=planes&view=grid");
  });

  it("returns an empty string when nothing can be included", () => {
    expect(buildQueryString({ hidden: undefined })).toBe("");
  });
});
