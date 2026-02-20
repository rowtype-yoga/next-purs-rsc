import { redirect, permanentRedirect, notFound } from "next/navigation";

export const _redirectImpl = redirect;
export const _permanentRedirectImpl = permanentRedirect;
export const _notFoundImpl = notFound;
