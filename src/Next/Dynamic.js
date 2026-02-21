import dynamic from "next/dynamic";

export const clientOnlyImpl = (component) =>
  dynamic(() => Promise.resolve({ default: component }), { ssr: false });
