import { NextResponse } from "next/server";

export const _jsonResponse = data => NextResponse.json(data);
export const _jsonResponseS = (data, status) => NextResponse.json(data, { status });
export const _textResponse = body => new NextResponse(body);
export const _textResponseS = (body, status) => new NextResponse(body, { status });
export const _redirectResponse = url => NextResponse.redirect(url);
export const _redirectResponseS = (url, status) => NextResponse.redirect(url, status);
export const _rewriteResponse = url => NextResponse.rewrite(url);
export const _nextResponse = NextResponse.next();
export const _withHeader = (res, name, value) => { res.headers.set(name, value); return res; };
export const _withStatus = (res, status) => new NextResponse(res.body, { status, headers: res.headers });
export const _withCookie = (res, name, value) => { res.cookies.set(name, value); return res; };
