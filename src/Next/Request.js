// NextRequest accessors
export const _requestMethod = r => r.method;
export const _requestUrl = r => r.url;
export const _requestNextUrl = r => r.nextUrl;
export const _requestHeaders = r => r.headers;
export const _requestCookies = r => r.cookies;
export const _requestIp = r => r.ip ?? null;
export const _requestGeo = r => r.geo ?? null;

// NextUrl accessors
export const _nextUrlPathname = u => u.pathname;
export const _nextUrlSearchParams = u => u.searchParams;
export const _nextUrlOrigin = u => u.origin;
export const _nextUrlHost = u => u.host;
export const _nextUrlPort = u => u.port;
export const _nextUrlProtocol = u => u.protocol;
export const _nextUrlHash = u => u.hash;
export const _nextUrlSearchParamsGet = (sp, key) => sp.get(key);
export const _nextUrlSearchParamsHas = (sp, key) => sp.has(key);

// Request body (returns Promise)
export const _requestJson = r => () => r.json();
export const _requestText = r => () => r.text();
export const _requestFormData = r => () => r.formData();

// RequestCookies accessors
export const _requestCookiesGet = (c, name) => c.get(name) ?? null;
export const _requestCookiesGetAll = c => c.getAll();
export const _requestCookiesHas = (c, name) => c.has(name);
