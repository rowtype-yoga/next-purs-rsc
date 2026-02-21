module Next.Font.Google.Quintessential where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quintessentialImpl :: forall r. { | r } -> FontConfig

quintessential :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quintessential = quintessentialImpl
