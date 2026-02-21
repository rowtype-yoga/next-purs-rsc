module Next.Font.Google.Fresca where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frescaImpl :: forall r. { | r } -> FontConfig

fresca :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fresca = frescaImpl
