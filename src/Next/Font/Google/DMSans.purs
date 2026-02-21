module Next.Font.Google.DMSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dMSansImpl :: forall r. { | r } -> FontConfig

dMSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dMSans = dMSansImpl
