module Next.Font.Google.B612 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import b612Impl :: forall r. { | r } -> FontConfig

b612 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
b612 = b612Impl
