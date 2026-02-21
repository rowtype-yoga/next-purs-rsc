module Next.Font.Google.Gidugu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import giduguImpl :: forall r. { | r } -> FontConfig

gidugu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gidugu = giduguImpl
