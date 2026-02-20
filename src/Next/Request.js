// NextRequest accessors
export const requestMethod = r => r.method;
export const requestUrl = r => r.url;
export const requestNextUrl = r => r.nextUrl;
export const requestHeaders = r => r.headers;
export const requestCookies = r => r.cookies;
export const requestIpImpl = r => r.ip ?? null;
export const requestGeoImpl = r => r.geo ?? null;

// NextUrl accessors
export const nextUrlPathname = u => u.pathname;
export const nextUrlSearchParams = u => u.searchParams;
export const nextUrlOrigin = u => u.origin;
export const nextUrlHost = u => u.host;
export const nextUrlPort = u => u.port;
export const nextUrlProtocol = u => u.protocol;
export const nextUrlHash = u => u.hash;
export const nextUrlSearchParamsGetImpl = (sp, key) => sp.get(key);
export const nextUrlSearchParamsHasImpl = (sp, key) => sp.has(key);

// Request body (returns Promise)
export const requestJsonImpl = (r) => r.json();
export const requestTextImpl = (r) => r.text();
export const requestFormDataImpl = (r) => r.formData();

// RequestCookies accessors
export const requestCookiesGetImpl = (c, name) => c.get(name) ?? null;
export const requestCookiesGetAll = c => c.getAll();
export const requestCookiesHasImpl = (c, name) => c.has(name);
