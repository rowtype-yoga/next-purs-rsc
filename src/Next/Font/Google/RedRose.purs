module Next.Font.Google.RedRose where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redRoseImpl :: forall r. { | r } -> FontConfig

redRose :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redRose = redRoseImpl
