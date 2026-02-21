module Next.Font.Google.Anybody where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anybodyImpl :: forall r. { | r } -> FontConfig

anybody :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anybody = anybodyImpl
