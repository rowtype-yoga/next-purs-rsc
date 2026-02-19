export const _mapRecord = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    return f(prop in r ? r[prop] : null);
  }
});

export const _getField = key => obj => obj[key];

export { default as _linkComponent } from "next/link";
export { default as _imageComponent } from "next/image";
export { default as _scriptComponent } from "next/script";
