import { NextResponse } from "next/server";

export const jsonResponse = data => NextResponse.json(data);
export const jsonResponseSImpl = (data, status) => NextResponse.json(data, { status });
export const textResponse = body => new NextResponse(body);
export const textResponseSImpl = (body, status) => new NextResponse(body, { status });
export const redirectResponseImpl = url => NextResponse.redirect(url);
export const redirectResponseSImpl = (url, status) => NextResponse.redirect(url, status);
export const rewriteResponseImpl = url => NextResponse.rewrite(url);
export const nextResponse = () => NextResponse.next();
export const withHeaderImpl = (res, name, value) => { res.headers.set(name, value); return res; };
export const withStatusImpl = (res, status) => new NextResponse(res.body, { status, headers: res.headers });
export const withCookieImpl = (res, name, value) => { res.cookies.set(name, value); return res; };
