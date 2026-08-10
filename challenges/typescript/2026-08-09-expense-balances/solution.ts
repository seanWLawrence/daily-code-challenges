export type Expense = {
  paidBy: string;
  amount: number;
  participants: string[];
};

export function balances(_expenses: Expense[]): Record<string, number> {
  throw new Error("Not implemented");
}
