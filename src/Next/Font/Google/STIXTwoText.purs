module Next.Font.Google.STIXTwoText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sTIXTwoTextImpl :: forall r. { | r } -> FontConfig

sTIXTwoText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sTIXTwoText = sTIXTwoTextImpl
