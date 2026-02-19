export const _mapRecord = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    return f(prop in r ? r[prop] : null);
  }
});

export const _getField = key => obj => obj[key];
