module Next.Font.Google.WixMadeforText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wixMadeforTextImpl :: forall r. { | r } -> FontConfig

wixMadeforText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wixMadeforText = wixMadeforTextImpl
