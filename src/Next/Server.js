import { after, connection } from "next/server";

export const afterImpl = (fn) => after(fn);
export const connectionImpl = connection;
