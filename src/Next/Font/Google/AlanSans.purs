module Next.Font.Google.AlanSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alanSansImpl :: forall r. { | r } -> FontConfig

alanSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alanSans = alanSansImpl
