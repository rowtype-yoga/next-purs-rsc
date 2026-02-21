module Next.Font.Google.Uchen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import uchenImpl :: forall r. { | r } -> FontConfig

uchen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
uchen = uchenImpl
