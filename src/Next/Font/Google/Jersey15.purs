module Next.Font.Google.Jersey15 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey15Impl :: forall r. { | r } -> FontConfig

jersey15 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey15 = jersey15Impl
