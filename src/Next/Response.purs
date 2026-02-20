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
import Next (NextResponse)
import Next.Headers (HeaderName, HeaderValue, CookieName, CookieValue)
import Route (Route, toPath)

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------

foreign import _jsonResponse :: forall r. { | r } -> NextResponse
jsonResponse :: forall r. { | r } -> NextResponse
jsonResponse = _jsonResponse

foreign import _jsonResponseS :: forall r. Fn2 { | r } Int NextResponse
jsonResponseS :: forall r. { | r } -> Int -> NextResponse
jsonResponseS = runFn2 _jsonResponseS

foreign import _textResponse :: String -> NextResponse
textResponse :: String -> NextResponse
textResponse = _textResponse

foreign import _textResponseS :: Fn2 String Int NextResponse
textResponseS :: String -> Int -> NextResponse
textResponseS = runFn2 _textResponseS

foreign import _redirectResponse :: String -> NextResponse
redirectResponse :: Route -> NextResponse
redirectResponse route = _redirectResponse (toPath route)

foreign import _redirectResponseS :: Fn2 String Int NextResponse
redirectResponseS :: Route -> Int -> NextResponse
redirectResponseS route status = runFn2 _redirectResponseS (toPath route) status

foreign import _rewriteResponse :: String -> NextResponse
rewriteResponse :: Route -> NextResponse
rewriteResponse route = _rewriteResponse (toPath route)

foreign import _nextResponse :: NextResponse
nextResponse :: NextResponse
nextResponse = _nextResponse

--------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------

foreign import _withHeader :: Fn3 NextResponse HeaderName HeaderValue NextResponse
withHeader :: NextResponse -> HeaderName -> HeaderValue -> NextResponse
withHeader = runFn3 _withHeader

foreign import _withStatus :: Fn2 NextResponse Int NextResponse
withStatus :: NextResponse -> Int -> NextResponse
withStatus = runFn2 _withStatus

foreign import _withCookie :: Fn3 NextResponse CookieName CookieValue NextResponse
withCookie :: NextResponse -> CookieName -> CookieValue -> NextResponse
withCookie = runFn3 _withCookie
