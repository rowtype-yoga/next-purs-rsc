import { useRouter, usePathname, redirect, permanentRedirect, notFound } from "next/navigation";

export const _useRouterImpl = useRouter;
export const _usePathnameImpl = usePathname;

export const _routerPush = (router, path) => router.push(path);
export const _routerReplace = (router, path) => router.replace(path);
export const _routerRefresh = (router) => router.refresh();
export const _routerPrefetch = (router, path) => router.prefetch(path);
export const _routerBack = (router) => router.back();
export const _routerForward = (router) => router.forward();

export const _redirectImpl = redirect;
export const _permanentRedirectImpl = permanentRedirect;
export const _notFoundImpl = notFound;
