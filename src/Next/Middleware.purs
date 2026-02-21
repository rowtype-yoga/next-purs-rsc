module Next.Middleware
  ( mkMiddleware
  , MiddlewareConfig
  ) where

import Prelude

import Control.Promise as Promise
import Effect.Aff (Aff)
import Foreign (Foreign)
import Next (NextRequest, NextResponse)
import Unsafe.Coerce (unsafeCoerce)

mkMiddleware :: (NextRequest -> Aff NextResponse) -> Foreign
mkMiddleware handler = unsafeCoerce \req ->
  Promise.fromAff (handler (unsafeCoerce req))

type MiddlewareConfig r = { matcher :: Array String | r }
