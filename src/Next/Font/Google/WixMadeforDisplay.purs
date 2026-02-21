module Next.Font.Google.WixMadeforDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wixMadeforDisplayImpl :: forall r. { | r } -> FontConfig

wixMadeforDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wixMadeforDisplay = wixMadeforDisplayImpl
