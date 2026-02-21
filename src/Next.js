export const mapRecordImpl = f => r => new Proxy({}, {
  get(_, prop) {
    if (typeof prop === "symbol") return undefined;
    const v = r[prop];
    return f(v === undefined ? null : v);
  }
});

export const getFieldImpl = key => obj => obj[key];

export const unwrapPagePropsImpl = async (props) => ({
  params: {...await (props.params ?? {})},
  searchParams: {...await (props.searchParams ?? {})}
});

export const unwrapHandlerParamsImpl = async (context) => ({...await (context.params ?? {})});

export { default as linkComponentImpl } from "next/link";
export { default as imageComponentImpl } from "next/image";
export { default as scriptComponentImpl } from "next/script";
