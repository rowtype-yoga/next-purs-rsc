module Next.Font.Google.Gafata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gafataImpl :: forall r. { | r } -> FontConfig

gafata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gafata = gafataImpl
