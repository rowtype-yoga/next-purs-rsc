import { NextResponse } from "next/server";

export const jsonImpl = (data, opts) => NextResponse.json(data, opts);
export const textImpl = (body, opts) => new NextResponse(body, opts);
export const redirectImpl = (url, opts) => NextResponse.redirect(url, opts.status);
export const rewriteImpl = url => NextResponse.rewrite(url);
export const nextImpl = () => NextResponse.next();
export const withHeaderImpl = (res, name, value) => { res.headers.set(name, value); return res; };
export const withStatusImpl = (res, status) => new NextResponse(res.body, { status, headers: res.headers });
export const withCookieImpl = (res, name, value) => { res.cookies.set(name, value); return res; };
