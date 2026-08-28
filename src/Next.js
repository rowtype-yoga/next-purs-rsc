export const mapRecordImpl = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    const v = r[prop];
    return f(v === undefined ? null : v);
  }
});

export const getFieldImpl = key => obj => obj[key];

// Await `params` always (resolved at build for static routes), but only touch
// `searchParams` when the page declares query params — awaiting searchParams opts
// the route into dynamic rendering, which breaks `output: export`. Query-less
// pages then stay statically prerenderable.
export const unwrapPagePropsImpl = (hasQuery) => async (props) => ({
  params: {...await (props.params ?? {})},
  searchParams: hasQuery ? {...await (props.searchParams ?? {})} : {}
});

export const unwrapHandlerParamsImpl = async (context) => ({...await (context.params ?? {})});

export { default as linkComponentImpl } from "next/link";
export { default as imageComponentImpl } from "next/image";
export { default as scriptComponentImpl } from "next/script";
