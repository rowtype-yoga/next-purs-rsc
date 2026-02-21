module Next.Font.Google.Junge where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jungeImpl :: forall r. { | r } -> FontConfig

junge :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
junge = jungeImpl
