export type QueryValue = string | string[] | undefined;

export function buildQueryString(_parameters: Record<string, QueryValue>): string {
  throw new Error("Not implemented");
}
