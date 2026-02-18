export const _mapRecord = f => r => {
  const o = {};
  for (const k in r) o[k] = f(r[k]);
  return o;
};
