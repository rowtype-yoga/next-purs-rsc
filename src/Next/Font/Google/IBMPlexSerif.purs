module Next.Font.Google.IBMPlexSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSerifImpl :: forall r. { | r } -> FontConfig

iBMPlexSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSerif = iBMPlexSerifImpl
