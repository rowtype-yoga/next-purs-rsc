module Next.Font.Google.Jersey10 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey10Impl :: forall r. { | r } -> FontConfig

jersey10 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey10 = jersey10Impl
