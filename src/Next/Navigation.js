import { useRouter, usePathname, useSearchParams, useParams, useSelectedLayoutSegment, useSelectedLayoutSegments, redirect, permanentRedirect, notFound } from "next/navigation";

export const _useRouterImpl = useRouter;
export const _usePathnameImpl = usePathname;
export const _useSearchParamsImpl = useSearchParams;
export const _useParamsImpl = useParams;
export const _useSelectedLayoutSegmentImpl = useSelectedLayoutSegment;
export const _useSelectedLayoutSegmentsImpl = useSelectedLayoutSegments;

export const _routerPush = (router, path) => router.push(path);
export const _routerReplace = (router, path) => router.replace(path);
export const _routerRefresh = (router) => router.refresh();
export const _routerPrefetch = (router, path) => router.prefetch(path);
export const _routerBack = (router) => router.back();
export const _routerForward = (router) => router.forward();

export const _searchParamsGet = (sp, key) => sp.get(key);
export const _searchParamsGetAll = (sp, key) => sp.getAll(key);
export const _searchParamsHas = (sp, key) => sp.has(key);
export const _searchParamsToString = (sp) => sp.toString();

export const _paramsGet = (p, key) => key in p ? p[key] : null;

export const _redirectImpl = redirect;
export const _permanentRedirectImpl = permanentRedirect;
export const _notFoundImpl = notFound;
