import { describe, expect, it } from "vitest";
import { formatDuration } from "./solution.js";

describe("formatDuration", () => {
  it("formats zero and durations smaller than an hour", () => {
    expect(formatDuration(0)).toBe("0s");
    expect(formatDuration(59)).toBe("59s");
    expect(formatDuration(65)).toBe("1m 5s");
    expect(formatDuration(3600)).toBe("1h");
  });

  it("uses descending non-zero units across day boundaries", () => {
    expect(formatDuration(3660)).toBe("1h 1m");
    expect(formatDuration(90061)).toBe("1d 1h 1m 1s");
    expect(formatDuration(172800 + 120)).toBe("2d 2m");
  });
});
