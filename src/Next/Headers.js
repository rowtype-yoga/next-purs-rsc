import { headers, cookies } from "next/headers";

export const _headersImpl = headers;
export const _cookiesImpl = cookies;

export const _headersGet = (h, key) => h.get(key);
export const _headersHas = (h, key) => h.has(key);

export const _cookiesGet = (c, name) => c.get(name) ?? null;
export const _cookiesGetAll = (c) => c.getAll();
export const _cookiesHas = (c, name) => c.has(name);

export const _cookiesSet = (c, name, value) => c.set(name, value);
export const _cookiesSetObj = (c, obj) => c.set(obj);
export const _cookiesDelete = (c, name) => c.delete(name);
