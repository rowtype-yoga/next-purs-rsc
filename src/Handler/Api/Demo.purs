module Handler.Api.Demo where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Class (liftEffect)
import Next (GET, POST, type (/), simpleGet, simplePost)
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), CookieValue(..), cookies, cookiesSet, cookiesDelete)
import Next.Request (requestMethod, requestUrl, requestNextUrl, nextUrlPathname, nextUrlOrigin, nextUrlHost, nextUrlProtocol, requestIp, requestGeo, requestCookies, requestCookiesGetAll, requestCookiesHas, requestText)
import Next.Response (jsonResponse, textResponseS, withHeader, withCookie)

get :: GET ("api" / "demo")
get = simpleGet \req _ -> do
  let nurl = requestNextUrl req
  let rc = requestCookies req
  let
    body =
      { method: requestMethod req
      , url: requestUrl req
      , pathname: nextUrlPathname nurl
      , origin: nextUrlOrigin nurl
      , host: nextUrlHost nurl
      , protocol: nextUrlProtocol nurl
      , ip: maybe "unknown" identity (requestIp req)
      , geo: requestGeo req
      , reqCookies: requestCookiesGetAll rc <#> \c -> un CookieName c.name <> "=" <> un CookieValue c.value
      , hasDemo: requestCookiesHas rc (CookieName "demo")
      }
  c <- cookies
  cookiesSet c (CookieName "demo") (CookieValue "set-by-purescript") # liftEffect
  cookiesDelete c (CookieName "stale") # liftEffect
  pure
    $ withCookie
        (withHeader (jsonResponse body) (HeaderName "X-Powered-By") (HeaderValue "PureScript"))
        (CookieName "demo-resp")
        (CookieValue "on-response")

post :: POST ("api" / "demo")
post = simplePost \req _ -> do
  body <- requestText req
  pure $ textResponseS ("Received: " <> body) 201
