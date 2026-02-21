module Next.Font.Google.Rokkitt where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rokkittImpl :: forall r. { | r } -> FontConfig

rokkitt :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rokkitt = rokkittImpl
