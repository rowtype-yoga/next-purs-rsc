module Middleware where

import Prelude

import Effect.Class (liftEffect)
import Foreign (Foreign)
import Next.Middleware (mkMiddleware, MiddlewareConfig)
import Next.Response (next)

middleware :: Foreign
middleware = mkMiddleware \_ -> do
  next # liftEffect

config :: MiddlewareConfig ()
config = { matcher: ["/dashboard/:path*", "/api/:path*"] }
