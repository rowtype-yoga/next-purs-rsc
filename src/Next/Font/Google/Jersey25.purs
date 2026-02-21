module Next.Font.Google.Jersey25 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey25Impl :: forall r. { | r } -> FontConfig

jersey25 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey25 = jersey25Impl
