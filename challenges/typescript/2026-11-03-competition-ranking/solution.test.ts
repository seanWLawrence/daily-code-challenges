import { describe, expect, it } from "vitest";
import { rankPlayers } from "./solution.js";

describe("rankPlayers", () => {
  it("uses competition ranks and alphabetical tie-breaking", () => {
    expect(
      rankPlayers([
        { name: "Mina", score: 91 },
        { name: "Omar", score: 88 },
        { name: "Rae", score: 91 },
        { name: "Sol", score: 72 }
      ])
    ).toEqual([
      { name: "Mina", score: 91, rank: 1 },
      { name: "Rae", score: 91, rank: 1 },
      { name: "Omar", score: 88, rank: 3 },
      { name: "Sol", score: 72, rank: 4 }
    ]);
  });

  it("does not mutate its input and handles empty input", () => {
    const players = [
      { name: "Bo", score: 4 },
      { name: "Ada", score: 9 }
    ];

    expect(rankPlayers(players)).toEqual([
      { name: "Ada", score: 9, rank: 1 },
      { name: "Bo", score: 4, rank: 2 }
    ]);
    expect(players).toEqual([
      { name: "Bo", score: 4 },
      { name: "Ada", score: 9 }
    ]);
    expect(rankPlayers([])).toEqual([]);
  });
});
