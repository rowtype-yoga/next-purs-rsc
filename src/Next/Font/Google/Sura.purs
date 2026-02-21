module Next.Font.Google.Sura where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import suraImpl :: forall r. { | r } -> FontConfig

sura :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sura = suraImpl
