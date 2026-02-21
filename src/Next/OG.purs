module Next.OG (imageResponse, ImageResponseOptions) where

import Data.Function.Uncurried (Fn2, runFn2)
import Next (NextResponse)
import Prim.Row as Row
import React.Basic (JSX)

type ImageResponseOptions =
  ( width :: Int
  , height :: Int
  , status :: Int
  , emoji :: String
  , debug :: Boolean
  )

foreign import imageResponseImpl :: forall opts. Fn2 JSX { | opts } NextResponse

imageResponse
  :: forall opts opts_
   . Row.Union opts opts_ ImageResponseOptions
  => JSX -> { | opts } -> NextResponse
imageResponse = runFn2 imageResponseImpl
