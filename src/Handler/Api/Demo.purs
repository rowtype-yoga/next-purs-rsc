module Handler.Api.Demo where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (un)
import Effect.Class (liftEffect)
import Next (GET, POST, type (/))
import Next (get, post) as Next
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), CookieValue(..), cookies, cookiesSet, cookiesDelete)
import Next.Request (requestMethod, requestUrl, requestNextUrl, nextUrlPathname, nextUrlOrigin, nextUrlHost, nextUrlProtocol, requestIp, requestGeo, requestCookies, requestCookiesGetAll, requestCookiesHas, requestText, print)
import Next.Response (json, text, withHeader, withCookie)

get :: GET ("api" / "demo")
get = Next.get \req _ -> do
  let nurl = requestNextUrl req
  let rc = requestCookies req
  let
    body =
      { method: print (requestMethod req)
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
        (withHeader (json body {}) (HeaderName "X-Powered-By") (HeaderValue "PureScript"))
        (CookieName "demo-resp")
        (CookieValue "on-response")

post :: POST ("api" / "demo")
post = Next.post \req _ -> do
  body <- requestText req
  pure $ text ("Received: " <> body) { status: 201 }
