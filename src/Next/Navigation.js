import { useRouter, usePathname, useSearchParams, useParams, useSelectedLayoutSegment, useSelectedLayoutSegments } from "next/navigation";

export const _useRouterImpl = useRouter;
export const _usePathnameImpl = usePathname;
export const _useSearchParamsImpl = useSearchParams;
export const _useParamsImpl = useParams;
export const _useSelectedLayoutSegmentImpl = useSelectedLayoutSegment;
export const _useSelectedLayoutSegmentsImpl = useSelectedLayoutSegments;

export const _routerPushImpl = (router, path) => router.push(path);
export const _routerReplaceImpl = (router, path) => router.replace(path);
export const _routerRefreshImpl = (router) => router.refresh();
export const _routerPrefetchImpl = (router, path) => router.prefetch(path);
export const _routerBackImpl = (router) => router.back();
export const _routerForwardImpl = (router) => router.forward();

export const _searchParamsGetImpl = (sp, key) => sp.get(key);
export const _searchParamsGetAllImpl = (sp, key) => sp.getAll(key);
export const _searchParamsHasImpl = (sp, key) => sp.has(key);
export const _searchParamsToStringImpl = (sp) => sp.toString();

export const _paramsGetImpl = (p, key) => key in p ? p[key] : null;
