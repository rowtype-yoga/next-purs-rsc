module Next.Font.Google.Combo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comboImpl :: forall r. { | r } -> FontConfig

combo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
combo = comboImpl
