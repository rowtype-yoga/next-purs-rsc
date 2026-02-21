module Next.Font.Google.Jura where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import juraImpl :: forall r. { | r } -> FontConfig

jura :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jura = juraImpl
