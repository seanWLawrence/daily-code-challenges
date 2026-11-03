export type Player = {
  name: string;
  score: number;
};

export type RankedPlayer = Player & {
  rank: number;
};

export function rankPlayers(_players: Player[]): RankedPlayer[] {
  throw new Error("Not implemented");
}
