module Next.Font.Google.Caprasimo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caprasimoImpl :: forall r. { | r } -> FontConfig

caprasimo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caprasimo = caprasimoImpl
