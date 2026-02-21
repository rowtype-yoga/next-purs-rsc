module Next.Font.Google.YuseiMagic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yuseiMagicImpl :: forall r. { | r } -> FontConfig

yuseiMagic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yuseiMagic = yuseiMagicImpl
