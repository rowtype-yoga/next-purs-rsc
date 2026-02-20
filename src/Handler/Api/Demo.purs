module Handler.Api.Demo where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Next (GET, POST, type (/), simpleGet, simplePost, NextResponse)
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), CookieValue(..), cookies, cookiesSet, cookiesDelete)
import Next.Request (requestMethod, requestUrl, requestNextUrl, nextUrlPathname, nextUrlOrigin, nextUrlHost, nextUrlProtocol, requestIp, requestGeo, requestCookies, requestCookiesGetAll, requestCookiesHas, requestText)
import Next.Response (jsonResponse, textResponseS, withHeader, withCookie)

get :: GET ("api" / "demo")
get = simpleGet \req _ -> do
  let method = requestMethod req
  let url = requestUrl req
  let nurl = requestNextUrl req
  let pathname = nextUrlPathname nurl
  let origin = nextUrlOrigin nurl
  let host = nextUrlHost nurl
  let protocol = nextUrlProtocol nurl
  let ip = maybe "unknown" identity (requestIp req)
  let geo = requestGeo req
  let rc = requestCookies req
  let reqCookies = requestCookiesGetAll rc # map \c -> un CookieName c.name <> "=" <> un CookieValue c.value
  let hasDemo = requestCookiesHas rc (CookieName "demo")
  c <- cookies
  liftEffect $ cookiesSet c (CookieName "demo") (CookieValue "set-by-purescript")
  liftEffect $ cookiesDelete c (CookieName "stale")
  do
    let resp = jsonResponse
          { method
          , url
          , pathname
          , origin
          , host
          , protocol
          , ip
          , geo
          , reqCookies
          , hasDemo
          }
    let resp' = withHeader resp (HeaderName "X-Powered-By") (HeaderValue "PureScript")
    let resp'' = withCookie resp' (CookieName "demo-resp") (CookieValue "on-response")
    pure resp''

post :: POST ("api" / "demo")
post = simplePost \req _ -> do
  body <- requestText req
  pure $ textResponseS ("Received: " <> body) 201
