import { headers, cookies } from "next/headers";

export const headersImpl = headers;
export const cookiesImpl = cookies;

export const headersGetImpl = (h, key) => h.get(key);
export const headersHasImpl = (h, key) => h.has(key);

export const cookiesGetImpl = (c, name) => c.get(name) ?? null;
export const cookiesGetAllImpl = (c) => c.getAll();
export const cookiesHasImpl = (c, name) => c.has(name);

export const cookiesSetImpl = (c, name, value) => c.set(name, value);
export const cookiesSetObjImpl = (c, obj) => c.set(obj);
export const cookiesDeleteImpl = (c, name) => c.delete(name);
