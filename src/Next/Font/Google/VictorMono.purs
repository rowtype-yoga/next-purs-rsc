module Next.Font.Google.VictorMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import victorMonoImpl :: forall r. { | r } -> FontConfig

victorMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
victorMono = victorMonoImpl
