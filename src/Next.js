export const _mapRecord = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    const v = r[prop];
    return f(v === undefined ? null : v);
  }
});

export const _getField = key => obj => obj[key];

// Copy a Next.js Proxy (searchParams/params) to a plain object
export const _toPlainObject = r => ({...r});

// Wraps a curried PureScript handler (request => rawParams => Effect (Promise a))
// into the shape expected by generated route wrappers: () => (request, rawParams) => Promise
export const _mkHandler = f => () => (request, rawParams) => f(request)(rawParams)();

export { default as _linkComponent } from "next/link";
export { default as _imageComponent } from "next/image";
export { default as _scriptComponent } from "next/script";
