module Next.Font.Google.IBMPlexSansThai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansThaiImpl :: forall r. { | r } -> FontConfig

iBMPlexSansThai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansThai = iBMPlexSansThaiImpl
