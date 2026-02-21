module Next.Font.Google.SquarePeg where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import squarePegImpl :: forall r. { | r } -> FontConfig

squarePeg :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
squarePeg = squarePegImpl
