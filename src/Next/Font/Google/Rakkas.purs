module Next.Font.Google.Rakkas where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rakkasImpl :: forall r. { | r } -> FontConfig

rakkas :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rakkas = rakkasImpl
