module Next.Response
  ( module Next
  , module StatusCode
  , ResponseOptions
  , json
  , text
  , redirect
  , rewrite
  , next
  , proxy
  , withHeader
  , withStatus
  , withCookie
  ) where

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Effect (Effect)
import Foreign (Foreign)
import JS.Fetch.Response (Response)
import Next (NextResponse)
import Next.Headers (HeaderName, HeaderValue, CookieName, CookieValue)
import Prim.Row as Row
import Next.Route (class IsRoute, toPath)
import Yoga.HTTP.API.Route.StatusCode (StatusCode(..), class StatusCodeMap, statusCodeFor) as StatusCode
import Yoga.JSON (class WriteForeign, write)

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

foreign import jsonImpl :: forall opts. Fn2 Foreign { | opts } NextResponse

-- | Create a JSON response. The payload is serialised via `yoga-json`'s
-- | `WriteForeign`, so `Maybe a` collapses to value/absent rather than the
-- | raw PureScript ADT runtime representation (`{value0: ...}`).
-- |
-- | ```purescript
-- | json { message: "ok" } {}
-- | json { error: "not found" } { status: 404 }
-- | ```
json :: forall a opts opts_. WriteForeign a => Row.Union opts opts_ ResponseOptions => a -> { | opts } -> NextResponse
json a opts = runFn2 jsonImpl (write a) opts

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
redirect :: forall route opts opts_. IsRoute route => Row.Union opts opts_ ResponseOptions => route -> { | opts } -> NextResponse
redirect route opts = runFn2 redirectImpl (toPath route) opts

foreign import rewriteImpl :: String -> NextResponse

-- | Rewrite the request to a different URL without redirecting.
rewrite :: forall route. IsRoute route => route -> NextResponse
rewrite route = rewriteImpl (toPath route)

foreign import nextImpl :: Effect NextResponse

-- | Continue to the next middleware.
next :: Effect NextResponse
next = nextImpl

foreign import proxyImpl :: Response -> NextResponse

-- | Forward an upstream `Response` (from `JS.Fetch`) back to the client,
-- | streaming the body and preserving status + headers. Useful for proxying
-- | binary responses (images, audio) where reading into memory is wasteful.
proxy :: Response -> NextResponse
proxy = proxyImpl

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
