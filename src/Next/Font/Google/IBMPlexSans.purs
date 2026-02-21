module Next.Font.Google.IBMPlexSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansImpl :: forall r. { | r } -> FontConfig

iBMPlexSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSans = iBMPlexSansImpl
