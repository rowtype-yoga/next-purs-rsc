module Next.Response
  ( module Next
  , module StatusCode
  , ResponseOptions
  , json
  , text
  , redirect
  , rewrite
  , next
  , withHeader
  , withStatus
  , withCookie
  ) where

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Data.Newtype (un)
import Effect (Effect)
import Next (NextResponse)
import Next.Headers (HeaderName, HeaderValue, CookieName, CookieValue)
import Prim.Row as Row
import Route (Route, toPath)
import Yoga.HTTP.API.Route.StatusCode (StatusCode(..), class StatusCodeMap, statusCodeFor) as StatusCode

--------------------------------------------------------------------------------
-- Options
--------------------------------------------------------------------------------

-- | Optional fields for response constructors.
-- |
-- | - `status`: HTTP status code (e.g. `StatusCode 201`, `StatusCode 404`).
type ResponseOptions =
  ( status :: StatusCode.StatusCode
  )

--------------------------------------------------------------------------------
-- Constructors
--------------------------------------------------------------------------------

foreign import jsonImpl :: forall r opts. Fn2 { | r } { | opts } NextResponse

-- | Create a JSON response.
-- |
-- | ```purescript
-- | json { message: "ok" } {}
-- | json { error: "not found" } { status: 404 }
-- | ```
json :: forall r opts opts_. Row.Union opts opts_ ResponseOptions => { | r } -> { | opts } -> NextResponse
json = runFn2 jsonImpl

foreign import textImpl :: forall opts. Fn2 String { | opts } NextResponse

-- | Create a plain-text response.
-- |
-- | ```purescript
-- | text "Hello" {}
-- | text "Created" { status: 201 }
-- | ```
text :: forall opts opts_. Row.Union opts opts_ ResponseOptions => String -> { | opts } -> NextResponse
text = runFn2 textImpl

foreign import redirectImpl :: forall opts. Fn2 String { | opts } NextResponse

-- | Create a redirect response (defaults to 307).
-- |
-- | ```purescript
-- | redirect Home {}
-- | redirect Login { status: 308 }
-- | ```
redirect :: forall opts opts_. Row.Union opts opts_ ResponseOptions => Route -> { | opts } -> NextResponse
redirect route opts = runFn2 redirectImpl (toPath route) opts

foreign import rewriteImpl :: String -> NextResponse

-- | Rewrite the request to a different URL without redirecting.
rewrite :: Route -> NextResponse
rewrite route = rewriteImpl (toPath route)

foreign import nextImpl :: Effect NextResponse

-- | Continue to the next middleware.
next :: Effect NextResponse
next = nextImpl

--------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------

foreign import withHeaderImpl :: Fn3 NextResponse HeaderName HeaderValue NextResponse
withHeader :: NextResponse -> HeaderName -> HeaderValue -> NextResponse
withHeader = runFn3 withHeaderImpl

foreign import withStatusImpl :: Fn2 NextResponse Int NextResponse
withStatus :: NextResponse -> StatusCode.StatusCode -> NextResponse
withStatus res (StatusCode.StatusCode s) = runFn2 withStatusImpl res s

foreign import withCookieImpl :: Fn3 NextResponse CookieName CookieValue NextResponse
withCookie :: NextResponse -> CookieName -> CookieValue -> NextResponse
withCookie = runFn3 withCookieImpl
