module Middleware where

import Prelude

import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Foreign (Foreign)
import Next (NextResponse)
import Next.Middleware (mkMiddleware, MiddlewareConfig)
import Next.Response (nextResponse)

middleware :: Foreign
middleware = mkMiddleware \_ -> do
  nextResponse # liftEffect

config :: MiddlewareConfig ()
config = { matcher: ["/dashboard/:path*", "/api/:path*"] }
