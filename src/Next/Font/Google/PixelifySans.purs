module Next.Font.Google.PixelifySans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pixelifySansImpl :: forall r. { | r } -> FontConfig

pixelifySans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pixelifySans = pixelifySansImpl
