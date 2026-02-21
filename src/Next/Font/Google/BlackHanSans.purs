module Next.Font.Google.BlackHanSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blackHanSansImpl :: forall r. { | r } -> FontConfig

blackHanSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blackHanSans = blackHanSansImpl
