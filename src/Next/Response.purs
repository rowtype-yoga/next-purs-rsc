module Next.Response
  ( module Next
  , jsonResponse
  , jsonResponseS
  , textResponse
  , textResponseS
  , redirectResponse
  , redirectResponseS
  , rewriteResponse
  , nextResponse
  , withHeader
  , withStatus
  , withCookie
  ) where

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Effect (Effect)
import Next (NextResponse)
import Next.Headers (HeaderName, HeaderValue, CookieName, CookieValue)
import Route (Route, toPath)

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------

foreign import jsonResponse :: forall r. { | r } -> NextResponse

foreign import jsonResponseSImpl :: forall r. Fn2 { | r } Int NextResponse
jsonResponseS :: forall r. { | r } -> Int -> NextResponse
jsonResponseS = runFn2 jsonResponseSImpl

foreign import textResponse :: String -> NextResponse

foreign import textResponseSImpl :: Fn2 String Int NextResponse
textResponseS :: String -> Int -> NextResponse
textResponseS = runFn2 textResponseSImpl

foreign import redirectResponseImpl :: String -> NextResponse
redirectResponse :: Route -> NextResponse
redirectResponse route = redirectResponseImpl (toPath route)

foreign import redirectResponseSImpl :: Fn2 String Int NextResponse
redirectResponseS :: Route -> Int -> NextResponse
redirectResponseS route status = runFn2 redirectResponseSImpl (toPath route) status

foreign import rewriteResponseImpl :: String -> NextResponse
rewriteResponse :: Route -> NextResponse
rewriteResponse route = rewriteResponseImpl (toPath route)

foreign import nextResponse :: Effect NextResponse

--------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------

foreign import withHeaderImpl :: Fn3 NextResponse HeaderName HeaderValue NextResponse
withHeader :: NextResponse -> HeaderName -> HeaderValue -> NextResponse
withHeader = runFn3 withHeaderImpl

foreign import withStatusImpl :: Fn2 NextResponse Int NextResponse
withStatus :: NextResponse -> Int -> NextResponse
withStatus = runFn2 withStatusImpl

foreign import withCookieImpl :: Fn3 NextResponse CookieName CookieValue NextResponse
withCookie :: NextResponse -> CookieName -> CookieValue -> NextResponse
withCookie = runFn3 withCookieImpl
