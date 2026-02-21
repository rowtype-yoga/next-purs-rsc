module Next.Font.Google.RedHatText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redHatTextImpl :: forall r. { | r } -> FontConfig

redHatText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redHatText = redHatTextImpl
