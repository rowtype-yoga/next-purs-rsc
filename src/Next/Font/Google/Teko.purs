module Next.Font.Google.Teko where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tekoImpl :: forall r. { | r } -> FontConfig

teko :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
teko = tekoImpl
