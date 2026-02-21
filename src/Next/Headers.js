import { headers, cookies, draftMode } from "next/headers";

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

export const draftModeImpl = draftMode;
export const draftModeIsEnabled = (dm) => dm.isEnabled;
export const draftModeEnableImpl = (dm) => dm.enable();
export const draftModeDisableImpl = (dm) => dm.disable();
