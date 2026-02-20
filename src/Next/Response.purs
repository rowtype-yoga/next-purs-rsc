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

import Prelude

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Data.Newtype (un)
import Next (NextResponse)
import Next.Headers (HeaderName(..), HeaderValue(..), CookieName(..), CookieValue(..))
import Route (Route, toPath)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import _jsonResponse :: forall r. { | r } -> NextResponse
foreign import _jsonResponseS :: forall r. Fn2 { | r } Int NextResponse
foreign import _textResponse :: String -> NextResponse
foreign import _textResponseS :: Fn2 String Int NextResponse
foreign import _redirectResponse :: String -> NextResponse
foreign import _redirectResponseS :: Fn2 String Int NextResponse
foreign import _rewriteResponse :: String -> NextResponse
foreign import _nextResponse :: NextResponse
foreign import _withHeader :: Fn3 NextResponse String String NextResponse
foreign import _withStatus :: Fn2 NextResponse Int NextResponse
foreign import _withCookie :: Fn3 NextResponse String String NextResponse

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------

jsonResponse :: forall r. { | r } -> NextResponse
jsonResponse = _jsonResponse

jsonResponseS :: forall r. { | r } -> Int -> NextResponse
jsonResponseS body status = runFn2 _jsonResponseS body status

textResponse :: String -> NextResponse
textResponse = _textResponse

textResponseS :: String -> Int -> NextResponse
textResponseS body status = runFn2 _textResponseS body status

redirectResponse :: Route -> NextResponse
redirectResponse route = _redirectResponse (toPath route)

redirectResponseS :: Route -> Int -> NextResponse
redirectResponseS route status = runFn2 _redirectResponseS (toPath route) status

rewriteResponse :: Route -> NextResponse
rewriteResponse route = _rewriteResponse (toPath route)

nextResponse :: NextResponse
nextResponse = _nextResponse

--------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------

withHeader :: NextResponse -> HeaderName -> HeaderValue -> NextResponse
withHeader res name value = runFn3 _withHeader res (un HeaderName name) (un HeaderValue value)

withStatus :: NextResponse -> Int -> NextResponse
withStatus res status = runFn2 _withStatus res status

withCookie :: NextResponse -> CookieName -> CookieValue -> NextResponse
withCookie res name value = runFn3 _withCookie res (un CookieName name) (un CookieValue value)
