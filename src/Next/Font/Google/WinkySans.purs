module Next.Font.Google.WinkySans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import winkySansImpl :: forall r. { | r } -> FontConfig

winkySans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
winkySans = winkySansImpl
