module Next.Font.Google.XanhMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import xanhMonoImpl :: forall r. { | r } -> FontConfig

xanhMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
xanhMono = xanhMonoImpl
