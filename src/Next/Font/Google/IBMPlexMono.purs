module Next.Font.Google.IBMPlexMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexMonoImpl :: forall r. { | r } -> FontConfig

iBMPlexMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexMono = iBMPlexMonoImpl
