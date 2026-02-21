export const _mapRecord = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    const v = r[prop];
    return f(v === undefined ? null : v);
  }
});

export const _getField = key => obj => obj[key];

// Unwrap Next.js Promise-wrapped params/searchParams proxies into plain objects
export const _unwrapPageProps = async (props) => ({
  params: {...await (props.params ?? {})},
  searchParams: {...await (props.searchParams ?? {})}
});

export const _unwrapHandlerParams = async (context) => ({...await (context.params ?? {})});

export { default as _linkComponent } from "next/link";
export { default as _imageComponent } from "next/image";
export { default as _scriptComponent } from "next/script";
