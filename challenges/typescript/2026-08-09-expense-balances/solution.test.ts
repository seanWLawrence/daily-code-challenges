import { describe, expect, it } from "vitest";

import { balances } from "./solution.js";

describe("balances", () => {
  it("calculates each person's net position", () => {
    expect(
      balances([
        { paidBy: "Ana", amount: 60, participants: ["Ana", "Ben", "Cam"] },
        { paidBy: "Ben", amount: 20, participants: ["Ben", "Cam"] }
      ])
    ).toEqual({ Ana: 40, Ben: -10, Cam: -30 });
  });

  it("includes a payer who did not participate", () => {
    expect(
      balances([{ paidBy: "Dee", amount: 30, participants: ["Eli", "Fay"] }])
    ).toEqual({ Dee: 30, Eli: -15, Fay: -15 });
  });

  it("returns an empty balance sheet when there are no expenses", () => {
    expect(balances([])).toEqual({});
  });
});
