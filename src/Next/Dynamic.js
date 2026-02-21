import dynamic from "next/dynamic";

export const _clientOnlyImpl = (component) =>
  dynamic(() => Promise.resolve({ default: component }), { ssr: false });
