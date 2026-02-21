import { useRouter, usePathname, useSearchParams, useParams, useSelectedLayoutSegment, useSelectedLayoutSegments } from "next/navigation";

export const useRouterImpl = useRouter;
export const usePathnameImpl = usePathname;
export const useSearchParamsImpl = useSearchParams;
export const useParamsImpl = useParams;
export const useSelectedLayoutSegmentImpl = useSelectedLayoutSegment;
export const useSelectedLayoutSegmentsImpl = useSelectedLayoutSegments;

export const routerPushImpl = (router, path) => router.push(path);
export const routerReplaceImpl = (router, path) => router.replace(path);
export const routerRefreshImpl = (router) => router.refresh();
export const routerPrefetchImpl = (router, path) => router.prefetch(path);
export const routerBackImpl = (router) => router.back();
export const routerForwardImpl = (router) => router.forward();

export const searchParamsGetImpl = (sp, key) => sp.get(key);
export const searchParamsGetAllImpl = (sp, key) => sp.getAll(key);
export const searchParamsHasImpl = (sp, key) => sp.has(key);
export const searchParamsToStringImpl = (sp) => sp.toString();

export const paramsGetImpl = (p, key) => key in p ? p[key] : null;
