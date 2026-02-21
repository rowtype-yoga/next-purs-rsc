module Next.Font.Google.Armata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import armataImpl :: forall r. { | r } -> FontConfig

armata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
armata = armataImpl
